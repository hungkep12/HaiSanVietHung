package com.haisanviethung.entities;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "USERS")
public class Users extends Base {

	@Column(name = "fName", nullable = true)
	private String fName;

	@Column(name = "lName", nullable = true)
	private String lName;

	@Column(name = "displayName", nullable = false)
	private String displayName;

	@Column(name = "email", nullable = false)
	private String email;

	@Column(name = "password", nullable = false)
	private String password;

	@Column(name = "newPassword", nullable = true)
	private String newPassword;

	@Column(name = "stt", nullable = false)
	private boolean stt;

	@OneToOne(mappedBy = "user")
	private UserAddress userAddress;

	@OneToMany(mappedBy = "user", cascade = CascadeType.ALL)
	private List<ReviewProduct> reviewProduct = new ArrayList<ReviewProduct>();

	@OneToMany(mappedBy = "user", cascade = CascadeType.ALL)
	private List<Orders> orders = new ArrayList<Orders>();

	public String getfName() {
		return fName;
	}

	public void setfName(String fName) {
		this.fName = fName;
	}

	public String getlName() {
		return lName;
	}

	public void setlName(String lName) {
		this.lName = lName;
	}

	public String getDisplayName() {
		return displayName;
	}

	public void setDisplayName(String displayName) {
		this.displayName = displayName;
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

	public UserAddress getUserAddress() {
		return userAddress;
	}

	public void setUserAddress(UserAddress userAddress) {
		this.userAddress = userAddress;
	}

	public boolean isStt() {
		return stt;
	}

	public void setStt(boolean stt) {
		this.stt = stt;
	}

	public String getNewPassword() {
		return newPassword;
	}

	public void setNewPassword(String newPassword) {
		this.newPassword = newPassword;
	}

	public List<ReviewProduct> getReviewProduct() {
		return reviewProduct;
	}

	public void setReviewProduct(List<ReviewProduct> reviewProduct) {
		this.reviewProduct = reviewProduct;
	}

	public Users() {
		super();
	}

	public Users(String email, String password) {
		super();
		this.email = email;
		this.password = password;
	}

}
