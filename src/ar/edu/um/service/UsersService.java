package ar.edu.um.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ar.edu.um.dao.User;
import ar.edu.um.dao.UsersDAO;

@Service("usersService")
public class UsersService {
	
	private UsersDAO usersDao;

	@Autowired
	public void setUsersDao(UsersDAO usersDao) {
		this.usersDao = usersDao;
	}

	public List<User> getCurrent() {

		return usersDao.getUsers();
	}
	
	public void create(User user) {
		usersDao.create(user);
		
	}

}