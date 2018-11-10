package com.example.app.model;

public class EmailForm {
	private String sendEmail;
	private String password;
	private String recipEmail;
	private String message;
	
	public EmailForm(){		
	}

	public String getSendEmail() {
		return sendEmail;
	}

	public void setSendEmail(String sendEmail) {
		this.sendEmail = sendEmail;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getRecipEmail() {
		return recipEmail;
	}

	public void setRecipEmail(String recipEmail) {
		this.recipEmail = recipEmail;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
}
