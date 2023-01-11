package fr.formation.service;

import java.util.List;

import fr.formation.inti.entity.Department;

public interface DepartmentService {
	
	Department findById(Integer id);

	List<Department> findAll();

	Integer save(Department c);

	void delete(Department entiy);

	void deleteById(Integer id);

}
