package com.findbank.c15.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.findbank.c15.model.Admi;
import com.findbank.c15.model.Login;
import com.findbank.c15.service.AdmiService;

@Controller
public class AdmiLoginController {
	
	@Autowired
	AdmiService admiService;
	
	
	@RequestMapping(value = "/loginadmi", method = RequestMethod.GET)
	public ModelAndView showLoginAdmin(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("admilogin");
		mav.addObject("login", new Login());
		return mav;
		
	}
	
	@RequestMapping(value = "/administrador", method = RequestMethod.POST)
	  public ModelAndView loginProcess(HttpServletRequest request, HttpServletResponse response,
	      @ModelAttribute("login") Login login) {
	    ModelAndView mav = null;

	    Admi admin = admiService.validateAdmi(login);

	    if (null != admin) {
	      mav = new ModelAndView("redirect:administrador");
	      mav.addObject("nombre", admin.getFirstname());
	    } else {
	      mav = new ModelAndView("login");
	      mav.addObject("message", "El usuario o contraseña ingresado es invalido");
	    }
	    return mav;
	  }
	  
	  @RequestMapping(value = "/welcomeadmi2", method = RequestMethod.GET)
	  public ModelAndView showWelcome2(HttpServletRequest request, HttpServletResponse response) {
	    ModelAndView mav = new ModelAndView("welcomeadmi2"); 

	    return mav;
	  }
	

}
