package com.haisanviethung.services;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.haisanviethung.entities.Users;

@Service
public class UserServices {
	@PersistenceContext
	protected EntityManager entityManager;

//	@SuppressWarnings("unchecked")
//	public List<Users> findAll() {
//		String sql="SELECT * from USERS";
//		Query query = entityManager.createNativeQuery(sql, Users.class);
//		return query.getResultList();
//	}


	
	@SuppressWarnings("unchecked")
	public List<Users> findNameById(int id) {
		String sql = "SELECT e.fname, e.lname FROM Users e where e.id=?1";
		Query query = entityManager.createNativeQuery(sql, Users.class);
		return query.getResultList();
	}
	
	@Transactional
	@Modifying
	public int updateStatusForId(Boolean stt, int id) {
		String sql = "UPDATE USERS SET stt = " + stt + " WHERE id =" + id;
		Query query = entityManager.createNativeQuery(sql, Users.class);
		return query.executeUpdate();
	}

	@Transactional
	@Modifying
	public boolean Insert(Users user) {
		Query query = entityManager.createNativeQuery("SELECT * FROM USERS where email = ?", Users.class)
				.setParameter(1, user.getEmail());
		if (query.getResultList().size() > 0) {
			return false;
		} else {

			String displayName = "";
			String email = user.getEmail();
			int t = email.lastIndexOf("@");
			for (int i = 0; i < t; i++) {
				displayName += email.charAt(i);
			}
			entityManager.createNativeQuery("Insert into USERS(email,password,stt,displayName) VALUES(?,?,?,?)")
					.setParameter(1, user.getEmail()).setParameter(2, user.getPassword()).setParameter(3, user.isStt())
					.setParameter(4, displayName).executeUpdate();
			return true;
		}
	}
	
	@Transactional
	@Modifying
	public int updateUserWithoutPassword(String displayName, String email, String fName, String lName, int id) {
		Query query = entityManager.createNativeQuery("UPDATE Users SET displayName='"+displayName+"', email='"+email+"', fName='"+fName+"', lName='"+lName+"' WHERE (id='"+id+"')", Users.class);
		return query.executeUpdate();
		
	}
	
	@Transactional
	@Modifying
	public int updateUserWithPassword(String displayName, String email, String fName, String lName, String password, int id) {
		Query query = entityManager.createNativeQuery("UPDATE Users SET displayName='"+displayName+"', email='"+email+"', fName='"+fName+"', lName='"+lName+"', password='"+password+"' WHERE (id='"+id+"')", Users.class);
		return query.executeUpdate();
		
	}

}
