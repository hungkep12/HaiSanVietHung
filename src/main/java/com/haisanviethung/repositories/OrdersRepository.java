package com.haisanviethung.repositories;

import java.util.List;
import java.util.Map;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.haisanviethung.entities.Orders;

@Repository
public interface OrdersRepository extends JpaRepository<Orders, Integer> {

	@Query("SELECT e FROM Orders e WHERE e.id=(SELECT MAX(id) FROM Orders e)")
	Orders findByMaxId();

	@Query("select e from Orders e where e.user.id=?1")
	List<Orders> findByIdUser(int idUser);

	@Query("select count(e.user.id) from Orders e where e.user.id=?1")
	int countByIdUser(int idUser);

	@Query("select date_format(e.dateOrder,'%m-%Y') as month, sum(e.total) as total from Orders e where (e.stt='1') group by date_format(e.dateOrder,'%m-%Y')")
	List<Map<String, Object>> getRevenueMonthly();
	
	@Query("SELECT e FROM Orders e where e.stt='0'")
	List<Orders> getProcessingOrders();
}
