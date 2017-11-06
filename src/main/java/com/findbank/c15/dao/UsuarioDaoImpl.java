package com.findbank.c15.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.findbank.c15.model.Login;
import com.findbank.c15.model.Usuario;
  
public class UsuarioDaoImpl implements UsuarioDao{

	 @Autowired
	  DataSource datasource;

	  @Autowired
	  JdbcTemplate jdbcTemplate;
	
	
	@Override
	public void register(Usuario usuario) {
		// TODO Auto-generated method stub
	    String sql = "insert into users values(?,?,?,?)";

	    jdbcTemplate.update(sql, new Object[] { usuario.getUsername(), usuario.getPassword(), usuario.getFirstname(),
	    		usuario.getLastname() });
	}

	@Override
	public Usuario validateUser(Login login) {
		// TODO Auto-generated method stub
		 String sql = "select * from users where username='" + login.getUsername() + "' and password='" + login.getPassword()
	        + "'";

	    List<Usuario> users = jdbcTemplate.query(sql, new UsuarioMapper());

	    return users.size() > 0 ? users.get(0) : null;
	  }

}

class UsuarioMapper implements RowMapper<Usuario> {

  public Usuario mapRow(ResultSet rs, int arg1) throws SQLException {
	  Usuario usuario = new Usuario();

	  usuario.setUsername(rs.getString("username"));
	  usuario.setPassword(rs.getString("password"));
	  usuario.setFirstname(rs.getString("firstname"));
	  usuario.setLastname(rs.getString("lastname")); 

    return usuario;
  }
}