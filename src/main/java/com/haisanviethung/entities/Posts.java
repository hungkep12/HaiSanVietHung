package com.haisanviethung.entities;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Lob;
import javax.persistence.Table;

@Entity
@Table(name = "POSTS")
public class Posts extends Base {

	@Column(name = "title", nullable = false)
	private String title;
	
	@Lob
	@Column(name = "detail", nullable = false)
	private String detail;
	
	@Column(name = "date", nullable = true)
	private LocalDate date;
	
	@Column(name = "description", nullable = true)
	private String description;
	
	@Column(name = "type", nullable = false)
	private String type;

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	public LocalDate getDate() {
		return date;
	}

	public void setDate(LocalDate date) {
		this.date = date;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}
	
	
}
