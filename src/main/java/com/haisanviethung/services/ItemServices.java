package com.haisanviethung.services;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.haisanviethung.entities.Items;

@Service
public class ItemServices {
	@PersistenceContext
	protected EntityManager entityManager;

	@Transactional
	public int insertItem(long price, int quantity, int idOrder, int idProduct) {
		String sql = "INSERT INTO items (price, quantity, idOrder, idProduct) VALUES ('" + price + "', '" + quantity
				+ "', '" + idOrder + "', '" + idProduct + "')";
		Query query = entityManager.createNativeQuery(sql, Items.class);
		return query.executeUpdate();
	}

}
