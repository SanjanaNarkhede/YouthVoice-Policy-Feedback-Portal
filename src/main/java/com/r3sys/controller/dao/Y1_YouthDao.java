package com.r3sys.controller.dao;
import com.r3sys.controller.model.*;
import java.util.List;
import org.hibernate.query.Query;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;


@Repository("youthDao") 
@Component
public class Y1_YouthDao {
	
	private HibernateTemplate hibernateTemplate;

    public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
        this.hibernateTemplate = hibernateTemplate;
    }

    public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	
    public void registerYouth(Y1_Youth youth) {
        hibernateTemplate.save(youth);
    }

    
   
    public Y1_Youth loginYouth(String email, String password) {
        return hibernateTemplate.execute(session -> {
            Query<Y1_Youth> query = session.createQuery(
                "from Y1_Youth where email = :email and password = :password", Y1_Youth.class);
            query.setParameter("email", email);
            query.setParameter("password", password);
            return query.uniqueResult();
        });
    }

    

    public List<Y1_Youth> getAllUser() {
        List<Y1_Youth> user = this.hibernateTemplate.loadAll(Y1_Youth.class);
        return user;
        }
}



    