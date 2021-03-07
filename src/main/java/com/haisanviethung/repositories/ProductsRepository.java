package com.haisanviethung.repositories;

import java.util.List;
import java.util.Map;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.haisanviethung.entities.Products;

@Repository
public interface ProductsRepository extends JpaRepository<Products, Integer> {

	List<Products> findByNameProductLike(String nameProduct);

	@Query("SELECT e.id FROM Products e WHERE e.nameProduct Like %?1% ")
	int findIdByNameProduct(String nameProduct);

//	@Query("SELECT e FROM Products e, Categories r WHERE r.nameCategory=?1 and r.id=e.category.id")
//	List<Products> findByNameCategory(String nameCategory);

	@Query("SELECT count(e.id) FROM Products e, Categories r WHERE r.nameCategory=?1 and r.id=e.category.id")
	int countProductOfCategory(String nameCategory);

	@Query("SELECT count(e.id) FROM Products e, Categories r WHERE (r.nameCategory=?1) and (r.id=e.category.id) and (e.price between ?2 and ?3)")
	int countProductOfCategoryBetween(String nameCategory, long min_price, long max_price);

	@Query("SELECT count(e.id) FROM Products e")
	int countAllProducts();

	@Query("SELECT count(e.id) FROM Products e where (e.price between ?1 and ?2)")
	int countAllProductsBetween(long min_price, long max_price);

	@Query("SELECT count(id) FROM Products e WHERE (LOWER(nameProduct) like ?1)")
	int countProductSearch(String nameProduct);

	@Query("SELECT count(id) FROM Products e WHERE (LOWER(nameProduct) like ?1) and (e.price between ?2 and ?3)")
	int countProductSearchBetween(String nameProduct, long min_price, long max_price);

	@Query("SELECT e FROM Products e WHERE id=?1")
	Products findById(int id);

	@Query(value = "SELECT r.id as id, r.nameProduct as nameProduct, r.price as price, r.quantity as quantity,  sum(e.quantity) as totalSell FROM (SELECT e.id, e.quantity, e.idProduct,e.idOrder FROM items e, orders r where r.stt='1' and r.id=e.idOrder) e, products r where e.idProduct=r.id group by r.id order by sum(e.quantity) desc limit 10", nativeQuery = true)
	public List<Map<String, Object>> findHotProducts();
	
	@Query(value = "SELECT r.id as id, r.nameProduct as nameProduct, r.price as price, r.quantity as quantity,  sum(e.quantity) as totalSell FROM (SELECT e.id, e.quantity, e.idProduct,e.idOrder FROM items e, orders r where r.stt='1' and r.id=e.idOrder) e, products r where e.idProduct=r.id group by r.id order by sum(e.quantity)", nativeQuery = true)
	public List<Map<String, Object>> findProductSold();
}
