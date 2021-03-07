package com.haisanviethung.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.haisanviethung.entities.Items;

@Repository
public interface ItemsRepository extends JpaRepository<Items, Integer> {
	@Query("SELECT e FROM Items e where e.order.id=?1")
	List<Items> findByIdOrder(int idOrder);
	
	
}
