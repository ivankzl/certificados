package ar.edu.um.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Component;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

@Component("usersDao")
public class UsersDAO {
	private NamedParameterJdbcTemplate jdbc;

	@Autowired
	public void setDatasource(DataSource jdbc) {
		this.jdbc = new NamedParameterJdbcTemplate(jdbc);
	}

	public User getUser(int id) {

		MapSqlParameterSource params = new MapSqlParameterSource();
		params.addValue("id", id);

		return jdbc.queryForObject("select * from user where id = :id", params,
				new RowMapper<User>() {

					public User mapRow(ResultSet rs, int rowNum)
							throws SQLException {

						User user = new User();

						user.setId(rs.getInt("id"));
						user.setUsername(rs.getString("username"));
						user.setPassword(rs.getString("password"));
						user.setFullname(rs.getString("fullname"));
						user.setEmail(rs.getString("email"));

						return user;
					}

				});
	}
	
	/*create a single user*/
	public boolean create(User user) {

		BeanPropertySqlParameterSource params = new BeanPropertySqlParameterSource(user);
		return jdbc.update("insert into user (username, password, fullname, email) values (:username, :password, :fullname, :email)", params) == 1;

	}
	
	
	public boolean update(User user){

		BeanPropertySqlParameterSource params = new BeanPropertySqlParameterSource(user);
		return jdbc.update("update users set username=:username, password=:password, fullname=:fullname, email=:email where id=:id", params) == 1;
	}
	public List<User> getUsers() {

		return jdbc.query("select * from user", new RowMapper<User>() {

			public User mapRow(ResultSet rs, int rowNum) throws SQLException {

				User user = new User();

				user.setId(rs.getInt("id"));
				user.setUsername(rs.getString("username"));
				user.setPassword(rs.getString("password"));
				user.setFullname(rs.getString("fullname"));
				user.setEmail(rs.getString("email"));

				return user;
			}

		});

	}
	
	public boolean delete (int id) {
		MapSqlParameterSource params = new MapSqlParameterSource();
		params.addValue("id", id);
		
		return jdbc.update("delete from user where id = :id", params) == 1;
		
	}

}