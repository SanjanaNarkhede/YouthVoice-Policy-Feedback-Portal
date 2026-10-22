package com.r3sys.controller.model;

import javax.persistence.Entity;
import javax.persistence.*;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name= "youth")
@Component
public class Y1_Youth {

	@Id
	private int contactId;
    private String name;
    private int age;
    private String email;
    private String password;
	public int getContactId() {
		return contactId;
	}
	public void setContactId(int contactId) {
		this.contactId = contactId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
    
	
    
}
