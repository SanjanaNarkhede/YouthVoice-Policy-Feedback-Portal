package com.r3sys.controller.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name = "feedback")
@Component
public class F1_FeedBack {

	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private Integer youthContactId;
	private Integer policyId;
	private String feedbackText;
	private String date;
	public F1_FeedBack(int id, int youthContactId, int policyId, String feedbackText, String date) {
		super();
		this.id = id;
		this.youthContactId = youthContactId;
		this.policyId = policyId;
		this.feedbackText = feedbackText;
		this.date = date;
	}
	public F1_FeedBack() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getYouthContactId() {
		return youthContactId;
	}
	public void setYouthContactId(int youthContactId) {
		this.youthContactId = youthContactId;
	}
	public int getPolicyId() {
		return policyId;
	}
	public void setPolicyId(int policyId) {
		this.policyId = policyId;
	}
	public String getFeedbackText() {
		return feedbackText;
	}
	public void setFeedbackText(String feedbackText) {
		this.feedbackText = feedbackText;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	
	
}
