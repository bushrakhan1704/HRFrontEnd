package FrontEnd.Services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import FrontEnd.Services.EmployeeService;
import FrontEnd.models.Employee;

@Service
public class EmployeeServiceImpl implements EmployeeService {
	
	@Autowired
	private RestTemplate restTemplate;
	
    @SuppressWarnings("unchecked")
	public List<Object> getUsers()
    {
    	String url="http://localhost:8090/getAll";
    	@SuppressWarnings("rawtypes")
		List userList = restTemplate.getForObject(url, List.class);
    	return userList;
    }
    
    public String  addEmployee(Employee emp)
    {
    	String url="http://localhost:8090/addEmp";
    	String Resp="Error";
    	ResponseEntity<String> responseEntityObj = restTemplate.postForEntity(url, emp, String.class);
		
    	if(responseEntityObj.getStatusCodeValue()==200) {
    		Resp=responseEntityObj.getBody();
    	}
    	return Resp;    	
    }
    
    public void updateEmployee(Employee emp)
    {
    	String url="http://localhost:8090/editEmp";
    	
    	restTemplate.put(url, emp);
    	
    }
    
    

}
