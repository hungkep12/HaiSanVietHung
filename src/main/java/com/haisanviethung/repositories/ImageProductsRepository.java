package com.haisanviethung.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.haisanviethung.entities.ImageProducts;

public interface ImageProductsRepository extends JpaRepository<ImageProducts, Integer> {

	@Query("Select e from ImageProducts e where e.product.id=?1")
	List<ImageProducts> findImageProductById(int id);

	@Query("select r.id from Products e, ImageProducts r where  r.product.id=e.id and e.nameProduct=?1")
	List<Integer> findIdImageProduct(String nameProduct);

}
