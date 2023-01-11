package fr.formation.service;

import java.util.List;

import fr.formation.inti.dao.EmployeeDaoImpl;
import fr.formation.inti.entity.Employee;

public class EmployeeServiceImpl implements EmployeeService{
	
	EmployeeDaoImpl dao;

	public EmployeeServiceImpl() {
		dao = new EmployeeDaoImpl();
	}

	public Employee findById(Integer id) {
		dao.beginTransaction();
		Employee c = dao.findById(id);
		dao.commit(true);
		return c;
	}

	public List<Employee> findAll() {
		dao.beginTransaction();
		List<Employee> list = dao.findAll();
		dao.commit(true);
		return list;
	}

	public Integer save(Employee c) {
		dao.beginTransaction();
		Employee employee = dao.save(c);

		dao.commit(true);
		return employee.getEmpId();
	}

	public void delete(Employee entiy) {
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
