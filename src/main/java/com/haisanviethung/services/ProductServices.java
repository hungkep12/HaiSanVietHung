package com.haisanviethung.services;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.haisanviethung.entities.Products;

@Service
public class ProductServices {

	@PersistenceContext
	protected EntityManager entityManager;

	@SuppressWarnings("unchecked")

	public List<Object[]> findHotProducts() {
		String sql = "SELECT r.*, sum(e.quantity) as totalSell FROM (SELECT e.id, e.quantity, e.idProduct,e.idOrder FROM items e, orders r where r.stt='1' and r.id=e.idOrder) e, products r where e.idProduct=r.id group by r.id order by sum(e.quantity) desc limit 10";
		Query query = entityManager.createNativeQuery(sql, Products.class);
		return query.getResultList();
	}

	@SuppressWarnings("unchecked")
	public List<Object[]> findAllByNameCategory1() {

		String sql = "SELECT e.id, e.nameProduct, e.price, e.quantity, e.idCategory FROM PRODUCTS e WHERE e.idCategory='1'";
		Query query = entityManager.createNativeQuery(sql, Products.class);
		return query.getResultList();
	}

	public List<Products> findByNameCategory(String nameCategory) {
		String sql = "SELECT * FROM Products e, Categories r WHERE r.nameCategory=? and r.id=e.idCategory";
		Query query = entityManager.createNativeQuery(sql, Products.class);
		query.setParameter(1, nameCategory);
		return query.getResultList();
	}

	public List<Products> findByNameCategoryBetween(String nameCategory, long min_price, long max_price) {
		String sql = "SELECT * FROM Products e, Categories r WHERE (r.nameCategory='" + nameCategory
				+ "') and (r.id=e.idCategory) and (e.price between " + min_price + " and " + max_price + ")";
		Query query = entityManager.createNativeQuery(sql, Products.class);

		return query.getResultList();
	}

	public List<Products> findAllProductsBetwwen(long min_price, long max_price) {
		String sql = "SELECT * FROM products e where (e.price between " + min_price + " and " + max_price + ")";
		Query query = entityManager.createNativeQuery(sql, Products.class);

		return query.getResultList();
	}

	@SuppressWarnings("unchecked")
	public List<Object[]> findByNameProductLike(String nameProduct) {
		String sql = "SELECT e.* FROM PRODUCTS e WHERE LOWER(e.nameProduct) like '%" + nameProduct + "%'";
		Query query = entityManager.createNativeQuery(sql, Products.class);
		return query.getResultList();
	}

	public List<Products> findByNameProductLikeBetween(String nameProduct, long min_price, long max_price) {
		String sql = "SELECT * FROM PRODUCTS e WHERE (LOWER(nameProduct) like '%" + nameProduct
				+ "%') and (e.price between " + min_price + " and " + max_price + ")";
		Query query = entityManager.createNativeQuery(sql, Products.class);
		return query.getResultList();
	}

	@Transactional
	@Modifying
	public int updateProduct(String description, String detail, String nameProduct, long price, int quantity, int id) {
		String sql = "UPDATE products SET description = '" + description + "', detail = '" + detail
				+ "', nameProduct = '" + nameProduct + "', price = '" + price + "', quantity = '" + quantity
				+ "' WHERE (id = '" + id + "')";
		Query query = entityManager.createNativeQuery(sql, Products.class);
		return query.executeUpdate();
	}

	@Transactional
	@Modifying
	public int updateQuantityProduct(int quantity, int id) {
		String sql = "UPDATE products SET quantity = '" + quantity + "' WHERE (id = '" + id + "')";
		Query query = entityManager.createNativeQuery(sql, Products.class);
		return query.executeUpdate();
	}

//	@SuppressWarnings("unchecked")
//	public int findIdByNameProduct(String nameProduct) {
//		String sql = "SELECT id FROM PRODUCTS WHERE nameProduct=?";
//		Query query = entityManager.createNativeQuery(sql, Products.class);
//		query.setParameter(1, nameProduct);
//		
//		int id = ((Number) query.getSingleResult()).intValue();
//		return id;
//	}
}
