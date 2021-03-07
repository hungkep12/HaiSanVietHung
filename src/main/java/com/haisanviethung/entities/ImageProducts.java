package com.haisanviethung.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "IMAGE_PRODUCTS")
public class ImageProducts extends Base {

	@Column(name = "URL", nullable = false)
	private String URL;

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "idProduct")
	private Products product;

	public String getURL() {
		return URL;
	}

	public void setURL(String uRL) {
		URL = uRL;
	}

	public Products getProduct() {
		return product;
	}

	public void setProduct(Products product) {
		this.product = product;
	}

}
