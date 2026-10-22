package com.r3sys.controller.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name = "policy")
@Component
public class P1_Policy {

	 @Id
	 @GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String title;
	private String description;
	private String publishDate;
	public P1_Policy() {
		super();
		// TODO Auto-generated constructor stub
	}
	public P1_Policy(int id, String title, String description, String publishDate) {
		super();
		this.id = id;
		this.title = title;
		this.description = description;
		this.publishDate = publishDate;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getPublishDate() {
		return publishDate;
	}
	public void setPublishDate(String publishDate) {
		this.publishDate = publishDate;
	}
	
	
}
