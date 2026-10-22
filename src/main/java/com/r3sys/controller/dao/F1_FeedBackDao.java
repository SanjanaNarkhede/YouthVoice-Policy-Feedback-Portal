package com.r3sys.controller.dao;
import java.util.List;
import javax.transaction.Transactional;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.r3sys.controller.model.F1_FeedBack;

@Component
@Repository("feedback")
public class F1_FeedBackDao {
	private HibernateTemplate hibernateTemplate;
    public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
        this.hibernateTemplate = hibernateTemplate;
    }
    public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}
	@Transactional
    public void addFeedback(F1_FeedBack feedback) {
        hibernateTemplate.save(feedback);
    }
	@Transactional
    public List<F1_FeedBack> getAllFeedback() {
        List<F1_FeedBack> feedback = this.hibernateTemplate.loadAll(F1_FeedBack.class);
        return feedback;
    }
    
    @RequestMapping(path= "/viewFeedback", method=RequestMethod.GET)
    public String viewFeedback()
    {
    		return "ViewFeedbackDao";
    }
}
