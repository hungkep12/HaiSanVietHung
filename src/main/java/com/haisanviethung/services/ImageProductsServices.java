package com.haisanviethung.services;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.haisanviethung.entities.ImageProducts;

@Service
public class ImageProductsServices {

	@PersistenceContext
	protected EntityManager entityManager;

	@Transactional
	public int insertImg(String URL, int idProduct) {
		String sql = "INSERT INTO image_products (URL, idProduct) VALUES ('" + URL + "', '" + idProduct + "')";
		Query query = entityManager.createNativeQuery(sql, ImageProducts.class);
		return query.executeUpdate();
	}

	@Transactional
	public int deleteImgByIdProduct(int idProduct) {
		String sql = "DELETE FROM image_products WHERE (idProduct = '" + idProduct + "')";
		Query query = entityManager.createNativeQuery(sql, ImageProducts.class);
		return query.executeUpdate();
	}

	@Transactional
	public int deleteImgById(int id) {
		String sql = "DELETE FROM image_products WHERE (id = '"+id+"')";
		Query query = entityManager.createNativeQuery(sql, ImageProducts.class);
		return query.executeUpdate();
	}

}
