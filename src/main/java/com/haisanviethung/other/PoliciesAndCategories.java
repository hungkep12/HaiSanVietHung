package com.haisanviethung.other;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Component;

import com.haisanviethung.entities.Categories;
import com.haisanviethung.entities.Posts;
import com.haisanviethung.repositories.CategoriesRepository;
import com.haisanviethung.repositories.PostsRepository;

@Component
public class PoliciesAndCategories {

	@Autowired
	private CategoriesRepository categoriesRepository;

	@Autowired
	private PostsRepository postsRepository;

	private List<Categories> categories;

	private List<Posts> posts;

	public PoliciesAndCategories() {
		super();
	}

	public PoliciesAndCategories(List<Categories> categories, List<Posts> posts) {
		super();
		this.categories = categories;
		this.posts = posts;
	}

	public List<Categories> getCategories() {
		return categories;
	}

	public void setCategories(List<Categories> categories) {
		this.categories = categories;
	}

	public List<Posts> getPosts() {
		return posts;
	}

	public void setPosts(List<Posts> posts) {
		this.posts = posts;
	}

	public PoliciesAndCategories policiesAndCategories() {
		return new PoliciesAndCategories(categoriesRepository.findAll(), postsRepository.findTitlePost("chính sách"));
	}

}
