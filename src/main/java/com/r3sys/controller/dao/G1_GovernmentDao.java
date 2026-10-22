package com.r3sys.controller.dao;

import javax.transaction.Transactional;
import com.r3sys.controller.model.*;
import java.util.List;


import org.hibernate.query.Query;

import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
@Component
@Repository("governmentDao")
public class G1_GovernmentDao {

	
	private HibernateTemplate hibernateTemplate;
	@Transactional
	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}
	@Transactional
	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	
	@Transactional
    public void registerGovernment(G1_Government government) {
        hibernateTemplate.save(government);
    }

    @Transactional
   
    public G1_Government loginGovernment(String email, String password) {
        return hibernateTemplate.execute(session -> {
            Query<G1_Government> query = session.createQuery(
                "from G1_Government where email = :email and password = :password", G1_Government.class);
            query.setParameter("email", email);
            query.setParameter("password", password);
            return query.uniqueResult();
        });
    }
    
 // Get all officer


    public List<G1_Government> getAllOfficer() {
    List<G1_Government> officer = this.hibernateTemplate.loadAll(G1_Government.class);
    return officer;
    }
    @Transactional
    public void deleteOfficer(int contactId) {
    		G1_Government officer = this.hibernateTemplate.get(G1_Government.class, contactId);
		this.hibernateTemplate.delete(officer);
	 }

  


    
}
