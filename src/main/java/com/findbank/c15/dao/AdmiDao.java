package com.findbank.c15.dao;

import com.findbank.c15.model.Admi;
import com.findbank.c15.model.Login;

public interface AdmiDao {
	
	Admi validateAdmi(Login login);

}
