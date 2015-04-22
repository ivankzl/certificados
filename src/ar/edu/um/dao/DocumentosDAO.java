package ar.edu.um.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Component;

@Component("documentosDao")
public class DocumentosDAO {

	private NamedParameterJdbcTemplate jdbc;

	@Autowired
	public void setDatasource(DataSource jdbc) {
		this.jdbc = new NamedParameterJdbcTemplate(jdbc);
	}

	public List<Documento> getDocumentos() {

		return jdbc.query("select * from documento", new RowMapper<Documento>() {

					public Documento mapRow(ResultSet rs, int rowNum)
							throws SQLException {

						Documento documento = new Documento();

						documento.setDoc_id(rs.getInt("doc_id"));
						documento.setDoc_nombre(rs.getString("doc_nombre"));
						System.out.println(documento);

						return documento;
					}

				});

	}
	
}
