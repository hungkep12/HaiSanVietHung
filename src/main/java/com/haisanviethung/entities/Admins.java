package com.haisanviethung.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "ADMINS")
public class Admins extends Base {

	@Column(name = "email", nullable = false)
	private String email;

	@Column(name = "username", nullable = false)
	private String username;

	@Column(name = "password", nullable = false)
	private String password;

	@Column(name = "newPassword", nullable = true)
	private String newPassword;
	
	@Column(name = "stt", nullable = false)
	private boolean stt;

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getNewPassword() {
		return newPassword;
	}

	public void setNewPassword(String newPassword) {
		this.newPassword = newPassword;
	}

	public boolean isStt() {
		return stt;
	}

	public void setStt(boolean stt) {
		this.stt = stt;
	}
	
	
}
