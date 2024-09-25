package employeedata.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import employeedata.dao.EmployeeDao;
import employeedata.dto.Employee;

@Controller
public class AppController {
	 
	@Autowired
	EmployeeDao dao;
	
	@RequestMapping("/signup")
	public ModelAndView signup() {
		
		ModelAndView modelandview=new ModelAndView();
		modelandview.setViewName("signup.jsp");
		modelandview.addObject("emp", new Employee());
		return modelandview;
	
	}
	@RequestMapping("/savemployee")
	public ModelAndView saveEmployee(@ModelAttribute Employee emp) {
		      dao.saveEmployee(emp);
		      ModelAndView modelandview=new ModelAndView();
		  	modelandview.setViewName("login.jsp");
		  	return modelandview;
		      
	}
	
	@RequestMapping("/login")
	public ModelAndView login(@RequestParam String email,@RequestParam String password) {
		
		Employee emp=dao.findByEmail(email);
		if(emp!=null) {
			
			if(emp.getPassword().equals(password)){
				  return new ModelAndView("redirect:/home");
				
				
			}else {
				return new ModelAndView("login.jsp");
			}
		}else {
			
			return  new ModelAndView("login.jsp");
		}
		
		
	}
	@RequestMapping("/addEmployee")
     public ModelAndView addemployee() {
		
		ModelAndView modelandview=new ModelAndView();
		modelandview.setViewName("addEmployee.jsp");
		modelandview.addObject("emp", new Employee());
		return modelandview;
	
	}
	@RequestMapping("/savenewemployee")
	public ModelAndView saveNewEmployee(@ModelAttribute Employee emp) {
		      dao.saveEmployee(emp);
		      return new ModelAndView("redirect:/home");
		      
	}
	@RequestMapping("/delete")
	public ModelAndView deleteEmployee(@RequestParam int id) {
		
		dao.deleteEmployee(id);
		  return new ModelAndView("redirect:/home");
		
	}
	 @RequestMapping("/edit")
	 public ModelAndView editEmployee(@RequestParam  int id) {
		 
		  Employee emp=dao.findById(id);
		  ModelAndView modelandview=new ModelAndView();
		  modelandview.setViewName("edit.jsp");
		  modelandview.addObject("emp", emp);
		  return modelandview;
		 
		 
	 }
	 @RequestMapping("/editEmployee")
	 
	 public ModelAndView editemployee(@ModelAttribute Employee emp,@RequestParam int id) {
		  dao.updateEmployee(emp, id);
	    return new ModelAndView("redirect:/home");
}
	 
	 @RequestMapping("/home")
	 public ModelAndView home() {
		 ModelAndView modelandview=new ModelAndView();
		 modelandview.setViewName("home.jsp");
			modelandview.addObject("emps", dao.getAllEmp());
			  
		  	return modelandview;
		 
	 }
	 
	 
	 
}
