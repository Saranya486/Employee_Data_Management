package employeedata.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import employeedata.dto.Employee;

@Component
public class EmployeeDao {
	
	
	@Autowired
	EntityManager em;
	
	public Employee saveEmployee(Employee emp) {
		
		em.getTransaction().begin();
		em.persist(emp);
		em.getTransaction().commit();
		return emp;
	}
	
	
	public Employee findById(int empid) {
		
		Employee emp=em.find(Employee.class,empid) ;
		
		if(emp!=null) {
			
			return emp;
		}
		return null;
	}
	
	public Employee deleteEmployee(int empid){
		 
		Employee emp=em.find(Employee.class,empid) ;
	
		if(emp!=null) {
			
			em.getTransaction().begin();
			em.remove(emp);
			em.getTransaction().commit();
			return emp;
		}
		return null;
		
	}
	
	
	public Employee updateEmployee(Employee e,int empid) {
		
		Employee  dbemp=em.find(Employee.class,empid) ;
		
		if(dbemp!=null) {
			
			e.setEmpid(empid);
			em.getTransaction().begin();
			em.merge(e);
			em.getTransaction().commit();
			return e;
			
		}
		return null;
		
		
		
	}

	
	public List<Employee>  getAllEmp(){
		
		Query  query=em.createQuery("select e from Employee e");
		return query.getResultList();
		
		
	}
	
	public Employee findByEmail(String email) {
		
		Query  query=em.createQuery("select e from Employee e where e.empmail=?1");
		
		query.setParameter(1, email);
		
		Employee emp=(Employee)query.getSingleResult();
		
		if(emp!=null) {
			
			return emp;
		}
		return null;
		
	   	

	}

}
