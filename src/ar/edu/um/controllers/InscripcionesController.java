package ar.edu.um.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import ar.edu.um.dao.Alumno;
import ar.edu.um.dao.Curso;
import ar.edu.um.dao.Documento;
import ar.edu.um.dao.Inscripcion;
import ar.edu.um.service.AlumnosService;
import ar.edu.um.service.CursosService;
import ar.edu.um.service.DocumentosService;
import ar.edu.um.service.InscripcionesService;

@Controller
public class InscripcionesController {

	private InscripcionesService inscripcionesService;
	private AlumnosService alumnosService;
	private DocumentosService documentosService;
	private CursosService cursosService;
	
	@Autowired
	public void setInscripcionesService(InscripcionesService inscripcionesService) {
		this.inscripcionesService = inscripcionesService;
	}
	
	@Autowired
	public void setAlumnosService(AlumnosService alumnosService) {
		this.alumnosService = alumnosService;
	}
	
	@Autowired
	public void setDocumentosService(DocumentosService documentosService) {
		this.documentosService = documentosService;
	}
	
	@Autowired
	public void setCursosService(CursosService cursosService) {
		this.cursosService = cursosService;
	}

	@RequestMapping("/registro")
	public String create(@RequestParam("cur_id") String cur_id, Model model) {
		Curso curso = new Curso();
		curso = cursosService.getCurso(Integer.parseInt(cur_id));
		model.addAttribute("cur_titulo", curso.getCur_titulo());
		List<Documento> documentos = documentosService.getCurrent();
		model.addAttribute("documentos", documentos);
		System.out.println(documentos);
		return "registro";
		
	}
	
	@RequestMapping(value="/crearegistro", method=RequestMethod.POST)
	public String creaRegistro(Model model, @Valid Alumno alumno, Inscripcion inscripcion, BindingResult result) {
		if (result.hasErrors()){
			System.out.println("no se valido el formulario");
			return "registro";
		}
		/* habría que llenar la entidad usuario y a la vez la entidad inscripcion. Como hacer? */
		alumnosService.create(alumno);
	//	ahora va a otro controlador que ingrese la base de datos;

		return "registrocreado";
	}
	
}