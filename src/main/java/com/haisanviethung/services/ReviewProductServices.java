package com.haisanviethung.services;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.haisanviethung.entities.ReviewProduct;

@Service
public class ReviewProductServices {

	@PersistenceContext
	protected EntityManager entityManager;
	
	@Transactional
	public int insertComment(String comment, float rating, int idProduct, int idUser) {
		String sql = "INSERT INTO review_product (comment, rating, idProduct, idUser) VALUES ('"+comment+"', '"+rating+"', '"+idProduct+"', '"+idUser+"')";
		Query query = entityManager.createNativeQuery(sql, ReviewProduct.class);
		return query.executeUpdate();
	}
}
