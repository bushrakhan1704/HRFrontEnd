package FrontEnd.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;

import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import FrontEnd.Services.impl.EmployeeServiceImpl;
import FrontEnd.models.Employee;

@RestController
public class EmployeeController {

	@Autowired
	private EmployeeServiceImpl empservice;
	

	@PostMapping(value="/addEmployee")
	public ModelAndView addEmployee(Employee emp) {
		ModelAndView modelView = new ModelAndView();
			
		  //Adding new Employee
		  empservice.addEmployee(emp);
		  
		  List<Object> emplist = empservice.getUsers();
		  modelView.addObject("result", "Added Successfully");
		  modelView.addObject("employees", emplist);
		  modelView.setViewName("success");

		  return modelView;

	}
	
	@PostMapping(value="/updateEmp")
	public ModelAndView updateEmp(Employee emp) {
			
		  ModelAndView modelView = new ModelAndView();

		  empservice.updateEmployee(emp);
		
		  List<Object> emplist = empservice.getUsers();
		  modelView.addObject("result", "Changed Successfully");
		  modelView.addObject("employees", emplist);
		  modelView.setViewName("success");
		  return modelView;

	}
}
