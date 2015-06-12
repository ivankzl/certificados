package ar.edu.um.controllers;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import ar.edu.um.dao.Alumno;
import ar.edu.um.dao.Documento;
import ar.edu.um.service.AlumnosService;
import ar.edu.um.service.DocumentosService;

@Controller
public class CertificadoController {

	private AlumnosService alumnosService;
	private DocumentosService documentosService;
	

	 @Autowired
	 private JavaMailSender mailSender;
	
	@Autowired
	public void setAlumnosService(AlumnosService alumnosService) {
		this.alumnosService = alumnosService;
	}
	
	@Autowired
	public void setDocumentosService(DocumentosService documentosService) {
		this.documentosService = documentosService;
	}


    /*---------- VERIFICACION DNI ----------*/
   
	@RequestMapping("/verificacion")
	public String verificaRegistro(Model model) {
		
		List<Documento> documentos = documentosService.getCurrent();
		model.addAttribute("documentos", documentos);

		return "verificacion";
		
	}
	
    /*---------- CONTROL ----------*/
    @RequestMapping(value="/control", method=RequestMethod.POST)
    public String control(Model model, @RequestParam("cur_id") String cur_id, @RequestParam("alu_doc_id") String alu_doc_id, @RequestParam("alu_dni") String alu_dni){
       
    	model.addAttribute("cur_id", cur_id);
		model.addAttribute("alu_doc_id", alu_doc_id);
		model.addAttribute("alu_dni", alu_dni);
		
		Documento documento = documentosService.getDocumento(Integer.parseInt(alu_doc_id));
		model.addAttribute("doc_nom", documento.getDoc_nombre());
		
		System.out.println("CUR_ID: " + cur_id + " ALU_DNI: " + alu_dni);
		
		if( alumnosService.getAlumno(Integer.parseInt(alu_dni), Integer.parseInt(alu_doc_id)) == null)
       {
        	System.out.println("No se encontró el documento en la BD");
        	
    		List<Documento> documentos = documentosService.getCurrent();
    		model.addAttribute("documentos", documentos);
    		return "registro";
       
       }else{
        	System.out.println("Sí se encontró el documento en la BD");
        	Alumno alumno = new Alumno();
       
        	alumno = alumnosService.getAlumno(Integer.parseInt(alu_dni), Integer.parseInt(alu_doc_id));
        	
        	
        	return "confirmacion";

        }
       
    }
	


	
}