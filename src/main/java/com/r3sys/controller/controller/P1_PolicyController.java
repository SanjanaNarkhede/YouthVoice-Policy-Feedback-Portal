package com.r3sys.controller.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.ModelAttribute;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.r3sys.controller.dao.F1_FeedBackDao;
import com.r3sys.controller.dao.P1_PolicyDao;
import com.r3sys.controller.model.F1_FeedBack;
import com.r3sys.controller.model.P1_Policy;
import com.r3sys.controller.model.Y1_Youth;


@Controller
@RequestMapping({"/policy", "/feedback"})
public class P1_PolicyController {
	ApplicationContext context = new ClassPathXmlApplicationContext("config.xml");
	P1_PolicyDao policyDao = context.getBean("policyDao", P1_PolicyDao.class);
	
	
	@RequestMapping(path= "/policyForm", method=RequestMethod.GET)
	public String showPolicyForm(Model model) {
		model.addAttribute("policy", new P1_Policy());
		return "P1_AddPolicy";
	}

	@RequestMapping(path= "/addPolicy", method=RequestMethod.POST)
	public String addPolicy(@ModelAttribute P1_Policy policy, HttpSession session) {
		policyDao.addPolicy(policy);
		session.setAttribute("policyId", policy.getId());
        

		return "A2_AdminDashboard";
	}
	
	@RequestMapping(path= "/managePolicy", method=RequestMethod.GET)
    public String managePolicy()
    {
    		return "A5_ViewPolicy";
    }
	
	@RequestMapping(path= "/deletePolicy", method=RequestMethod.POST)
	public String deletePolicy(@RequestParam("id") int id) {
		policyDao.deletePolicy(id);
		return "A5_ViewPolicy";
	}
	
	@RequestMapping(path= "/viewPolicy", method=RequestMethod.GET)
    public String viewPolicy()
    {
		
    		return "Y3_ViewPolicy";
    }
	
	F1_FeedBackDao feedBackDao = context.getBean("feedBackDao", F1_FeedBackDao.class);
	
	@RequestMapping(path= "/feedbackform", method=RequestMethod.POST)
	public String feedbackform(HttpServletRequest request,
            HttpSession session,
            Model model) {
		
		model.addAttribute("feedback", new F1_FeedBack());
		return "SendFeedback";
	}

	@RequestMapping(path= "/sendFeedback", method=RequestMethod.POST)
	public String addFeedback( @RequestParam("feedback") String feedbackText,
            @RequestParam("policyId") int policyId, @RequestParam("date") String date,
            @RequestParam("youthContactId") int youthContactId, @ModelAttribute F1_FeedBack feedback) {
		feedback.setFeedbackText(feedbackText);
		feedback.setPolicyId(policyId);
		feedback.setYouthContactId(youthContactId);
		feedback.setDate(date);
		feedBackDao.addFeedback(feedback);
		return "Y3_YouthDashboard";

	}
	
}
