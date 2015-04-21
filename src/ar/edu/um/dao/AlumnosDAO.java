package ar.edu.um.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Component;

@Component("alumnosDao")
public class AlumnosDAO {
	private NamedParameterJdbcTemplate jdbc;
	
	@Autowired
	public void setDatasource(DataSource jdbc) {
		this.jdbc = new NamedParameterJdbcTemplate(jdbc);
	}
	
	public List<Alumno> getAlumnos() {

		return jdbc.query("select * from alumno", new RowMapper<Alumno>() {

			public Alumno mapRow(ResultSet rs, int rowNum) throws SQLException {

				Alumno alumno = new Alumno();
				
				alumno.setAlu_dni(rs.getInt("alu_dni"));
				alumno.setAlu_doc_id(rs.getInt("alu_doc_id"));
				alumno.setAlu_nombre(rs.getString("alu_nombre"));
				alumno.setAlu_apellido(rs.getString("alu_apellido"));
				alumno.setAlu_fechanac(rs.getDate("alu_fechanac"));
				alumno.setAlu_email(rs.getString("alu_email"));
				alumno.setAlu_telefono(rs.getString("alu_telefono"));
				alumno.setAlu_domicilio(rs.getString("alu_domicilio"));
				
				return alumno;
			}

		});
	}
	
	public Alumno getUser(int alu_dni) {

		MapSqlParameterSource params = new MapSqlParameterSource();
		params.addValue("alu_dni", alu_dni);

		return jdbc.queryForObject("select * from alumno where alu_dni = :alu_dni", params, new RowMapper<Alumno>() {

					public Alumno mapRow(ResultSet rs, int rowNum)
							throws SQLException {

						Alumno alumno = new Alumno();
						
						alumno.setAlu_dni(rs.getInt("alu_dni"));
						alumno.setAlu_doc_id(rs.getInt("alu_doc_id"));
						alumno.setAlu_nombre(rs.getString("alu_nombre"));
						alumno.setAlu_apellido(rs.getString("alu_apellido"));
						alumno.setAlu_fechanac(rs.getDate("alu_fechanac"));
						alumno.setAlu_email(rs.getString("alu_email"));
						alumno.setAlu_telefono(rs.getString("alu_telefono"));
						alumno.setAlu_domicilio(rs.getString("alu_domicilio"));

						return alumno;
					}

				});
	}
	
	/*Crear un alumno nuevo*/
	public boolean create(Alumno alumno) {

		BeanPropertySqlParameterSource params = new BeanPropertySqlParameterSource(alumno);
		return jdbc.update("insert into alumno (alu_dni, alu_doc_id, alu_nombre, alu_apellido, alu_fechanac, alu_email, alu_telefono, alu_domicilio) values (:alu_dni, :alu_doc_id, :alu_nombre, :alu_apellido, :alu_fechanac, :alu_email, :alu_telefono, :alu_domicilio)", params) == 1;

	}
	
}

	