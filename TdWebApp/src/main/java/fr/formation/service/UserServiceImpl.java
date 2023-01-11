package fr.formation.service;

import java.util.List;

import fr.formation.inti.dao.UserDaoImpl;
import fr.formation.inti.entity.User;

public class UserServiceImpl implements UserService {

	UserDaoImpl dao;

	public UserServiceImpl() {
		dao = new UserDaoImpl();
	}

	public User findById(Integer id) {
		dao.beginTransaction();
		User c = dao.findById(id);
		dao.commit(true);
		return c;
	}

	public List<User> findAll() {
		dao.beginTransaction();
		List<User> list = dao.findAll();
		dao.commit(true);
		return list;
	}

	public Integer save(User c) {
		dao.beginTransaction();
		User cust = dao.save(c);

		dao.commit(true);
		return cust.getUserId();
	}

	public void delete(User entiy) {
		dao.beginTransaction();
		dao.delete(entiy);
		dao.commit(true);

	}

	public void deleteById(Integer id) {
		dao.beginTransaction();
		dao.deleteById(id);
		dao.commit(true);

	}

	public User findByEmail(String email, String password) {
		dao.beginTransaction();
		User user = dao.findByEmail(email, password);
		dao.commit(true);
		return user;
	}

}
