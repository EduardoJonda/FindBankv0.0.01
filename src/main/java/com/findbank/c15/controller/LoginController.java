package com.findbank.c15.controller;
  
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.findbank.c15.model.Login;
import com.findbank.c15.model.Usuario;
import com.findbank.c15.service.UsuarioService;

@Controller
public class LoginController {

  @Autowired
  UsuarioService usuarioService;
  
 	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		  
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		String formattedDate = dateFormat.format(date);
		model.addAttribute("serverTime", formattedDate );
		return "home";
	} 
  
  @RequestMapping(value = "/login", method = RequestMethod.GET)
  public ModelAndView showLogin(HttpServletRequest request, HttpServletResponse response) {
    ModelAndView mav = new ModelAndView("login");
    mav.addObject("login", new Login());

    return mav;
  }
	
  @RequestMapping(value = "/home", method = RequestMethod.POST)
  public ModelAndView loginProcess(HttpServletRequest request, HttpServletResponse response,
      @ModelAttribute("login") Login login) {
    ModelAndView mav = null;

    Usuario usuario = usuarioService.validateUser(login);

    if (null != usuario) {
      mav = new ModelAndView("welcome");
      mav.addObject("nombre", usuario.getFirstname());
    } else {
      mav = new ModelAndView("login");
      mav.addObject("message", "El usuario o contraseña ingresado es invalido");
    }
    return mav;
  }
  
  @RequestMapping(value = "/welcome2", method = RequestMethod.GET)
  public ModelAndView showWelcome2(HttpServletRequest request, HttpServletResponse response) {
    ModelAndView mav = new ModelAndView("welcome2"); 

    return mav;
  }
  
}
