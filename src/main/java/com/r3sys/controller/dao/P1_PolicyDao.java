package com.r3sys.controller.dao;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import com.r3sys.controller.model.P1_Policy;
import java.util.List;

import javax.transaction.Transactional;


@Component
@Repository("policy")
public class P1_PolicyDao {

	
	private HibernateTemplate hibernateTemplate;

    public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
        this.hibernateTemplate = hibernateTemplate;
    }

    public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

    @Transactional
    public void addPolicy(P1_Policy policy) {
    		hibernateTemplate.save(policy);
    }

    @Transactional
    public List<P1_Policy> getAllPolicy() {
        List<P1_Policy> policy = this.hibernateTemplate.loadAll(P1_Policy.class);
        return policy;
    }
    
    @Transactional
    public void deletePolicy(int id) {
    		P1_Policy policy = this.hibernateTemplate.get(P1_Policy.class, id);
    		this.hibernateTemplate.delete(policy);
    	 }
}
