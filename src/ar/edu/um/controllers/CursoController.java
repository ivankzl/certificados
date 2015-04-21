package ar.edu.um.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import ar.edu.um.dao.Curso;
import ar.edu.um.service.CursosService;


@Controller
public class CursoController {
	
	private CursosService cursosService;
	
	@Autowired
	public void setCursosService(CursosService cursosService) {
		this.cursosService = cursosService;
	}
	

	/* muestra los cursos que hay en la BD */
	@RequestMapping(value="/cursos")
	public String showTest (Model model) {

		List<Curso> cursos = cursosService.getCurrent();
		model.addAttribute("cursos", cursos);

		return "cursos";
	}


}