package com.haisanviethung.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.haisanviethung.entities.ReviewProduct;

@Repository
public interface ReviewProductRepository extends JpaRepository<ReviewProduct, Integer> {

	@Query("select count(id) from ReviewProduct e where e.product.id=?1")
	int countCommentOfProduct(int idProduct);
	
	@Query("select e from ReviewProduct e where e.product.id=?1")
	List<ReviewProduct> findByProducts(int idProduct);
	
	@Query("select count(e.user.id) from ReviewProduct e where e.product.id=?1 and e.user.id=?2")
	int countCommentUserAtProducts(int idProduct, int idUser);
	
	@Query("select avg(e.rating) from ReviewProduct e where e.product.id=?1")
	double avgRatingProduct(int idProduct);
}
