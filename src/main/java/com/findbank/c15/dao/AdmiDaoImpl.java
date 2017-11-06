package com.findbank.c15.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.findbank.c15.model.Admi;
import com.findbank.c15.model.Login;
import com.findbank.c15.model.Usuario;

public class AdmiDaoImpl implements AdmiDao {
	
	 @Autowired
	  DataSource datasource;

	  @Autowired
	  JdbcTemplate jdbcTemplate;

	@Override
	public Admi validateAdmi(Login login) {
		String sql = "select * from admis where username='" + login.getUsername() + "' and password='" + login.getPassword()
        + "'";

    List<Admi> admins = jdbcTemplate.query(sql, new AdmiMapper());

    return admins.size() > 0 ? admins.get(0) : null;
  }
}

class AdmiMapper implements RowMapper<Admi> {

	  public Admi mapRow(ResultSet rs, int arg1) throws SQLException {
		  Admi admin = new Admi();

		  admin.setUsername(rs.getString("username"));
		  admin.setPassword(rs.getString("password"));
		  admin.setFirstname(rs.getString("firstname"));
		  admin.setLastname(rs.getString("lastname")); 

	    return admin;
	  }
	}
