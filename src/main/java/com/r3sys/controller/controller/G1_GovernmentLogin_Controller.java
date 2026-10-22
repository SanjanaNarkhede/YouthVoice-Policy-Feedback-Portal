package com.r3sys.controller.controller;

import javax.servlet.http.HttpSession;

import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.r3sys.controller.dao.G1_GovernmentDao;

import com.r3sys.controller.model.G1_Government;
import org.springframework.context.ApplicationContext;


@Controller
@RequestMapping("/government")
public class G1_GovernmentLogin_Controller {

	ApplicationContext context = new ClassPathXmlApplicationContext("config.xml");
	G1_GovernmentDao governmentDao = context.getBean("governmentDao", G1_GovernmentDao.class);
			
	@RequestMapping(path= "/register", method=RequestMethod.GET)
	public String showRegisterForm(Model model) {
		model.addAttribute("government", new G1_Government());
		return "G1_GovernmentRegister";
	}
	
	@RequestMapping(path= "/afterRegister", method=RequestMethod.POST)
	public String register(@ModelAttribute G1_Government government, Model model) {
		governmentDao.registerGovernment(government);
		return "redirect:/government/login";
	}
	
	@RequestMapping(path="/loginGovernment", method=RequestMethod.GET)
    public String showLoginForm() {
        return "G2_GovernmentLogin";
    }

	@RequestMapping(path="/submitgovernmentlogin", method=RequestMethod.POST)
    public String login(@RequestParam String email, @RequestParam String password, HttpSession session, Model model) {
    	G1_Government government = governmentDao.loginGovernment(email, password);
        if (government != null) {
            session.setAttribute("government", government);
            return "redirect:/government/dashboard";
        } else {
            model.addAttribute("error", "Invalid credentials");
            return "G2_GovernmentLogin";
        }
    }
    
    @GetMapping("/dashboard")
    public String dashboard() {
        return "G3_GovernmentDashboard";
    }
    
    @RequestMapping(path= "/viewOfficer", method=RequestMethod.GET)
    public String viewOfficer()
    {
    		return "A3_View_GovernmentOfficer";
    }
    
    @RequestMapping(path= "/", method=RequestMethod.GET)
    public String backToDashboard()
    {
    		return "index";
    }
    
    @RequestMapping(path= "/deleteOfficer", method=RequestMethod.POST)
	public String deleteOfficer(@RequestParam("contactId") int id) {
    	governmentDao.deleteOfficer(id);
		return "A3_View_GovernmentOfficer";
	}
    
 
	
	
}
