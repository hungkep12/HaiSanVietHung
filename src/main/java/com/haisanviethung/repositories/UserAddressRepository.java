package com.haisanviethung.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.haisanviethung.entities.UserAddress;

@Repository
public interface UserAddressRepository extends JpaRepository<UserAddress, Integer> {

	@Query("SELECT e FROM UserAddress e WHERE e.user.id=?1")
	UserAddress findById(int id);

}
