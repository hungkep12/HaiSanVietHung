package com.haisanviethung.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.haisanviethung.entities.Users;

@Repository
public interface UsersRepository extends JpaRepository<Users, Integer> {

	@Query("SELECT e FROM Users e WHERE displayName=?1")
	Users findByDisplayName(String displayName);
	
	
}
