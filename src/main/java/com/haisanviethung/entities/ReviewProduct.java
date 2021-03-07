package com.haisanviethung.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "REVIEW_PRODUCT")
public class ReviewProduct extends Base {

	@Column(name = "rating")
	private int rating;

	@Lob
	@Column(name = "comment")
	private String comment;

	@ManyToOne
	@JoinColumn(name = "idProduct")
	private Products product;

	@ManyToOne
	@JoinColumn(name = "idUser")
	private Users user;

	public int getRating() {
		return rating;
	}

	public void setRating(int rating) {
		this.rating = rating;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public Products getProduct() {
		return product;
	}

	public void setProduct(Products product) {
		this.product = product;
	}

	public Users getUser() {
		return user;
	}

	public void setUser(Users user) {
		this.user = user;
	}

}
