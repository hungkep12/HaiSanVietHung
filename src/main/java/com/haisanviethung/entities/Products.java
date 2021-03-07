package com.haisanviethung.entities;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name = "PRODUCTS")
public class Products extends Base {

	@Column(name = "nameProduct", nullable = false)
	private String nameProduct;

	@Column(name = "price", nullable = false)
	private long price;

	@Column(name = "quantity", nullable = false)
	private int quantity;

	@Lob
	@Column(name = "description", nullable = false)
	private String description;

	@Lob
	@Column(name = "detail", nullable = true)
	private String detail;

	@ManyToOne
	@JoinColumn(name = "idCategory")
	private Categories category;

	@OneToMany(mappedBy = "product", cascade = CascadeType.ALL)
	private List<ReviewProduct> reviewProduct = new ArrayList<ReviewProduct>();

	@OneToMany(mappedBy = "product", cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	private List<ImageProducts> imageProducts = new ArrayList<ImageProducts>();

	@OneToMany(mappedBy = "products", cascade = CascadeType.ALL)
	private List<Items> item = new ArrayList<Items>();

	@Transient
	private int totalSell;

	public String getNameProduct() {
		return nameProduct;
	}

	public void setNameProduct(String nameProduct) {
		this.nameProduct = nameProduct;
	}

	public long getPrice() {
		return price;
	}

	public void setPrice(long price) {
		this.price = price;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Categories getCategory() {
		return category;
	}

	public void setCategory(Categories category) {
		this.category = category;
	}

	public List<ImageProducts> getImageProducts() {
		return imageProducts;
	}

	public void setImageProducts(List<ImageProducts> imageProducts) {
		this.imageProducts = imageProducts;
	}

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	public List<ReviewProduct> getReviewProduct() {
		return reviewProduct;
	}

	public void setReviewProduct(List<ReviewProduct> reviewProduct) {
		this.reviewProduct = reviewProduct;
	}

	public List<Items> getItem() {
		return item;
	}

	public void setItem(List<Items> item) {
		this.item = item;
	}

	public void addImageProduct(ImageProducts imageProduct) {
		imageProducts.add(imageProduct);

		imageProduct.setProduct(this);
	}

	public void removeImageProduct(ImageProducts imageProduct) {
		imageProducts.remove(imageProduct);
		imageProduct.setProduct(null);
		;
	}

	public int getTotalSell() {
		return totalSell;
	}

	public void setTotalSell(int totalSell) {
		this.totalSell = totalSell;
	}

	public Products() {
		super();
	}

}
