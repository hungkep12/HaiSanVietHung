package com.haisanviethung.entities;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "CATEGORIES")
public class Categories extends Base {

	@Column(name = "nameCategory", columnDefinition = "text", nullable = false)
	private String nameCategory;

	@Column(name = "image", nullable = false)
	private String image;

	@OneToMany(mappedBy = "category", cascade = CascadeType.ALL)
	private List<Products> product = new ArrayList<Products>();

	public String getNameCategory() {
		return nameCategory;
	}

	public void setNameCategory(String nameCategory) {
		this.nameCategory = nameCategory;
	}

	public List<Products> getProduct() {
		return product;
	}

	public void setProduct(List<Products> product) {
		this.product = product;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

}
