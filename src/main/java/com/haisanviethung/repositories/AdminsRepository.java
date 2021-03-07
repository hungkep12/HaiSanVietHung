package com.haisanviethung.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.haisanviethung.entities.Admins;

@Repository
public interface AdminsRepository extends JpaRepository<Admins, Integer> {
	@Query("SELECT count(e.id) FROM Admins e")
	int countAdmins();
}
