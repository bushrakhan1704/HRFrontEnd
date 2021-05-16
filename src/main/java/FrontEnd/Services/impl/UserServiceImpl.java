package FrontEnd.Services.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import FrontEnd.Repository.UserRepository;
import FrontEnd.Services.UserService;
import FrontEnd.models.User;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserRepository repo;
	
	public boolean authenticate(String username,String password) {
		 User user = repo.getByusername(username);
		 if(user != null && user.getPassword().equals(password)) {
			 return true;
		 }
		 return false;

	}
}
