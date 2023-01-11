package fr.formation.service;

import java.util.List;

import fr.formation.inti.dao.DepartmentDaoImpl;
import fr.formation.inti.entity.Department;

public class DepartmentServiceImpl implements DepartmentService{
	
	DepartmentDaoImpl dao;

	public DepartmentServiceImpl() {
		dao = new DepartmentDaoImpl();
	}

	public Department findById(Integer id) {
		dao.beginTransaction();
		Department c = dao.findById(id);
		dao.commit(true);
		return c;
	}

	public List<Department> findAll() {
		dao.beginTransaction();
		List<Department> list = dao.findAll();
		dao.commit(true);
		return list;
	}

	public Integer save(Department c) {
		dao.beginTransaction();
		Department Department = dao.save(c);

		dao.commit(true);
		return Department.getDeptId();
	}

	public void delete(Department entiy) {
		dao.beginTransaction();
		dao.delete(entiy);
		dao.commit(true);

	}

	public void deleteById(Integer id) {
		dao.beginTransaction();
		dao.deleteById(id);
		dao.commit(true);

	}

}
