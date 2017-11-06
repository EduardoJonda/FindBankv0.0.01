package com.findbank.c15.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.findbank.c15.dao.AdmiDao; 
import com.findbank.c15.model.Admi;
import com.findbank.c15.model.Login;

public class AdmiServiceImpl implements AdmiService{
	

	  @Autowired
	  public AdmiDao admiDao;

	@Override
	public Admi validateAdmi(Login login) {
		// TODO Auto-generated method stub
		return admiDao.validateAdmi(login);
	}

}
