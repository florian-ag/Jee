package fr.formation.inti.dao;

import org.hibernate.query.Query;

import fr.formation.inti.entity.User;

public class UserDaoImpl extends GenericDaoImpl<User, Integer> implements UserDao {

	public User findByEmail(String email, String password) {
		String hql = "from user where email = :email and password = :password";
		Query query = session.createQuery(hql);
		query.setParameter("email", email);
		query.setParameter("password", password);
		User user = (User) query.uniqueResult();

		return user;
	}


}
