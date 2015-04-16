package ar.edu.um.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import ar.edu.um.dao.User;
import ar.edu.um.service.UsersService;

@Controller
public class UsersController {
	
	private UsersService usersService;

	@Autowired
	public void setUsersService(UsersService usersService) {
		this.usersService = usersService;
	}
	
	/* muestra los usuarios que hay en el sistema */
	@RequestMapping(value="/users")
	public String showTest (Model model) {

		List<User> users = usersService.getCurrent();
		model.addAttribute("users", users);

		return "users";
	}

}
