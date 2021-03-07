package com.haisanviethung.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.haisanviethung.entities.Posts;

@Repository
public interface PostsRepository extends JpaRepository<Posts, Integer> {

	@Query("select e from Posts e where e.title=?1 and type=?2")
	List<Posts> findByTitleAndType(String title, String type);

	@Query(value = "select e from Posts e where type=?1")
	List<Posts> findTitlePost(String type);

//	List<Posts> findByTitleAndType()
}
