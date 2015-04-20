package ar.edu.um.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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

	@RequestMapping("/create")
	public String create(Model model) {
		model.addAttribute("user", new User());
		return "create";
	}
	
	@RequestMapping(value="/docreate", method=RequestMethod.POST)
	public String doCreate(Model model, @Valid User user, BindingResult result) {
		if (result.hasErrors()){
			System.out.println("no se valido el formulario");
			return "create";
		}
		
		usersService.create(user);

		return "usercreated";
	}
	
	/* este método deberia cargar los datos del usuario que se seleccionó (tal ve pasando el ID como parámetro),
	 * y luego agregar el objeto usuario al modelo para ṕoder moificar esos datos
	 */
	@RequestMapping("/alter")
	public String createOffer(Model model) {
		model.addAttribute("user", new User());
		
		return "alter";
	}
	
	@RequestMapping(value="/doalter", method=RequestMethod.POST)
	public String doAlter(Model model, @Valid User user, BindingResult result) {
		if (result.hasErrors()){
			System.out.println("no se valido el formulario");
			return "create";
		}
		
		usersService.create(user);

		return "usercreated";
	}
}
