package com.r3sys.controller.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.r3sys.controller.dao.Y1_YouthDao;
import com.r3sys.controller.model.Y1_Youth;

@Controller
@RequestMapping("/youth")
public class Y1_YouthController {

	ApplicationContext context = new ClassPathXmlApplicationContext("config.xml");
	Y1_YouthDao youthDao = context.getBean("youthDao", Y1_YouthDao.class);

	@GetMapping("/register")
	public String showRegisterForm(Model model) {
		model.addAttribute("youth", new Y1_Youth());
		return "Y2_RegisterYouth";
	}

	@PostMapping("/register")
	public String register(@ModelAttribute Y1_Youth youth) {
		youthDao.registerYouth(youth);
		return "redirect:/youth/login";
	}
	@RequestMapping(path= "/loginYouth", method=RequestMethod.GET)
    public String showLoginForm() 
	{
        return "Y1_LoginYouth";
    }

	@RequestMapping(path= "/login", method=RequestMethod.POST)
    public String login(HttpServletRequest request, @RequestParam String email, @RequestParam String password, HttpSession session, Model model) {
        Y1_Youth youth = youthDao.loginYouth(email, password);
        if (youth != null) {
        		request.setAttribute("contactId", youth.getContactId());
            session.setAttribute("youth", youth);
            
            return "redirect:/youth/dashboard";
        } else {
            model.addAttribute("error", "Invalid credentials");
            return "Y1_LoginYouth";
        }
    }
    
    @GetMapping("/dashboard")
    public String dashboard() {
        return "Y3_YouthDashboard";
    }

    @RequestMapping(path= "/viewUser", method=RequestMethod.GET)
    public String viewUser()
    {
    		return "A4_ViewYouth";
    }
    
    @RequestMapping(path= "/", method=RequestMethod.GET)
    public String backToDashboard()
    {
    		return "index";
    }
}
