package com.haisanviethung.entities;

import javax.persistence.Table;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity
@Table(name = "USER_ADDRESS")
public class UserAddress extends Base {

	@Column(name = "address", nullable = false)
	private String address;
	
	@Column(name = "POSTCODE", nullable = true)
	private String POSTCODE;
	
	@Column(name = "phone", nullable = false)
	private String phone;
	
	@OneToOne
	@JoinColumn(name = "idUser")
	private Users user;

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPOSTCODE() {
		return POSTCODE;
	}

	public void setPOSTCODE(String pOSTCODE) {
		POSTCODE = pOSTCODE;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Users getUser() {
		return user;
	}

	public void setUser(Users user) {
		this.user = user;
	}
	
	
	
}
