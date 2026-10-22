package com.r3sys.controller.controller;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.r3sys.controller.dao.F1_FeedBackDao;


@Controller
@RequestMapping("/feedback")
public class F1_FeedbackController {

	ApplicationContext context = new ClassPathXmlApplicationContext("config.xml");
	F1_FeedBackDao feedBackDao = context.getBean("feedBackDao", F1_FeedBackDao.class);
	
	@RequestMapping(path= "/viewFeedback", method=RequestMethod.GET)
    public String viewFeedback()
    {
		
    		return "ViewFeedback";
    }
	
}
