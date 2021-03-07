package com.haisanviethung.services;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.haisanviethung.entities.Admins;

@Service
public class AdminServices {

	@PersistenceContext
	protected EntityManager entityManager;

	@Transactional
	@Modifying
	public int updateStatusForId(Boolean stt, int id) {
		String sql = "UPDATE ADMINS SET stt = " + stt + " WHERE id =" + id;
		Query query = entityManager.createNativeQuery(sql, Admins.class);
		return query.executeUpdate();
	}

	@Transactional
	@Modifying
	public int updateAdminWithoutPassword(String email, String username, int id) {
		String sql = "UPDATE admins SET email = '" + email + "', username = '" + username + "' WHERE (id = '" + id
				+ "')";
		Query query = entityManager.createNativeQuery(sql, Admins.class);
		return query.executeUpdate();
	}

	@Transactional
	@Modifying
	public int updateAdminWithPassword(String email, String password, String username, int id) {
		String sql = "UPDATE admins SET email = '" + email + "', password = '" + password + "', username = '" + username
				+ "' WHERE (id = '" + id + "')";
		Query query = entityManager.createNativeQuery(sql, Admins.class);
		return query.executeUpdate();
	}
}
