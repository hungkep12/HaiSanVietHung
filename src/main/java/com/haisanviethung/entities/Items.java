package com.haisanviethung.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "ITEMS")
public class Items {

	@Id // xác định đây là khoá chính.
	@GeneratedValue(strategy = GenerationType.IDENTITY) // auto-increment.
	@Column(name = "id")
	private Integer id; // primary-key

	@ManyToOne
	@JoinColumn(name = "idProduct")
	private Products products;

	@Column(name = "quantity")
	private int quantity;

	@Column(name = "price")
	private long price;

	@ManyToOne
	@JoinColumn(name = "idOrder")
	private Orders order;

	public Products getProducts() {
		return products;
	}

	public void setProducts(Products products) {
		this.products = products;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public long getPrice() {
		return price;
	}

	public void setPrice(long price) {
		this.price = price;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Items(Integer id, Products products, int quantity, long price) {
		super();
		this.id = id;
		this.products = products;
		this.quantity = quantity;
		this.price = price;
	}

	public Items() {
		super();
	}

	public Orders getOrder() {
		return order;
	}

	public void setOrder(Orders order) {
		this.order = order;
	}

}
