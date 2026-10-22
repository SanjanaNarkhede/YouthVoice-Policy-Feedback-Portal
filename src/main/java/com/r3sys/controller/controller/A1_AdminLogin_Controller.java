package com.r3sys.controller.controller;

import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class A1_AdminLogin_Controller 
{

	
	@RequestMapping(path="/", method=RequestMethod.GET)
	    public String showHomePage() 
	 	{
	        return "index";  
	    }
	@RequestMapping(path="/loginadmin", method=RequestMethod.GET)
	
    public String showLoginForm() 
 	{
        return "A1_AdminLogin";  
    }


	@RequestMapping(path="/submitadminlogin", method=RequestMethod.POST)
	    public String login(HttpServletRequest request) 
	 	{
	        String email = request.getParameter("email");
	        String password = request.getParameter("password");

	        if ("admin@gmail.com".equals(email) && "admin123".equals(password)) 
	        {
	            return "A2_AdminDashboard"; 
	        } 
	        else 
	        {
	            request.setAttribute("error", "Invalid email or password");
	            return "A1_AdminLogin";  
	        }
	    }
}
