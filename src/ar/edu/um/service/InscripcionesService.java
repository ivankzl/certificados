package ar.edu.um.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ar.edu.um.dao.Alumno;
import ar.edu.um.dao.AlumnosDAO;
import ar.edu.um.dao.Inscripcion;
import ar.edu.um.dao.InscripcionesDAO;

@Service("inscripcionesService")
public class InscripcionesService {
	
	private InscripcionesDAO inscripcionesDao;
	
	@Autowired
	public void setInscripcionesDao(InscripcionesDAO inscripcionesDao) {
		this.inscripcionesDao = inscripcionesDao;
	}
	
	public List<Inscripcion> getCurrent() {

		return inscripcionesDao.getInscripciones();

	}
	
	public void create(Inscripcion inscripcion){
		inscripcionesDao.create(inscripcion);
	}

}
