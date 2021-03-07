package com.haisanviethung.services;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.haisanviethung.entities.ReviewProduct;
import com.haisanviethung.entities.UserAddress;

@Service
public class UserAddressServices {

	@PersistenceContext
	protected EntityManager entityManager;

	@Transactional
	@Modifying
	public int updateAddressWithoutPOSTCODE(String address, String phone, int idUser) {
		Query query = entityManager.createNativeQuery("UPDATE user_address SET address='" + address + "', phone='"
				+ phone + "' WHERE idUser='" + idUser + "'", UserAddress.class);
		return query.executeUpdate();

	}

	@Transactional
	@Modifying
	public int updateAddressWithPOSTCODE(String POSTCODE, String address, String phone, int idUser) {
		Query query = entityManager.createNativeQuery("UPDATE user_address SET POSTCODE='" + POSTCODE + "', address='"
				+ address + "', phone='" + phone + "' WHERE idUser='" + idUser + "'", UserAddress.class);
		return query.executeUpdate();

	}

	@Transactional
	public int insertAddressWithoutPOSTCODE(String address, String phone, int idUser) {
		String sql = "INSERT INTO user_address (address, phone, idUser) VALUES ('" + address + "', '" + phone + "', '"
				+ idUser + "')";
		Query query = entityManager.createNativeQuery(sql, UserAddress.class);
		return query.executeUpdate();
	}

	@Transactional
	public int insertAddressWithPOSTCODE(String POSTCODE, String address, String phone, int idUser) {
		String sql = "INSERT INTO user_address (POSTCODE, address, phone, idUser) VALUES ('" + POSTCODE + "', '"
				+ address + "', '" + phone + "', '" + idUser + "')";
		Query query = entityManager.createNativeQuery(sql, UserAddress.class);
		return query.executeUpdate();
	}

}
