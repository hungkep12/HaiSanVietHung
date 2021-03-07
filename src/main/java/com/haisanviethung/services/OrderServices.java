package com.haisanviethung.services;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.haisanviethung.entities.Orders;

@Service
public class OrderServices {
	@PersistenceContext
	protected EntityManager entityManager;

	@Transactional
	@Modifying
	public int updateSttForOrder(int stt, int id) {
		String sql = "UPDATE orders SET stt = '" + stt + "' WHERE (`id` = '" + id + "')";
		Query query = entityManager.createNativeQuery(sql, Orders.class);
		return query.executeUpdate();

	}
}
