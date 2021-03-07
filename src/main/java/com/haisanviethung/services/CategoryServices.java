package com.haisanviethung.services;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.haisanviethung.entities.Categories;

@Service
public class CategoryServices {
	@PersistenceContext
	protected EntityManager entityManager;

	@Modifying
	@Transactional
	public int updateCategoryWithoutImg(String nameCategory, int idCategory) {
		String sql = "UPDATE categories SET nameCategory = '" + nameCategory + "' WHERE (id = '" + idCategory + "')";
		Query query = entityManager.createNativeQuery(sql, Categories.class);
		return query.executeUpdate();
	}

	@Modifying
	@Transactional
	public int updateCategoryWithImg(String image, String nameCategory, int idCategory) {
		String sql = "UPDATE categories SET image = '" + image + "', nameCategory = '" + nameCategory
				+ "' WHERE (`id` = '" + idCategory + "')";
		Query query = entityManager.createNativeQuery(sql, Categories.class);
		return query.executeUpdate();
	}
}
