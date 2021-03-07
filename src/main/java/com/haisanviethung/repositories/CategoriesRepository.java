package com.haisanviethung.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.haisanviethung.entities.Categories;

public interface CategoriesRepository extends JpaRepository<Categories, Integer> {

	
}
