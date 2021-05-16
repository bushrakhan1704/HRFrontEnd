package FrontEnd.Services;

import java.util.List;

import FrontEnd.models.Employee;

public interface EmployeeService {
	public List<Object> getUsers();
	  public String  addEmployee(Employee emp);
	  public void updateEmployee(Employee emp);
}
