package com.findbank.c15.controller;


import java.util.List;

import com.findbank.c15.model.Agentes;
import com.findbank.c15.model.Login;
import com.findbank.c15.service.AgentesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AgenteController {
	
	@Autowired
	AgentesService agentesService;
	
	@RequestMapping(value = "/administrador", method = RequestMethod.GET, headers = "Accept=application/json")
	public String getCountries(Model model) {
		
		List<Agentes> listOfAgentes = agentesService.getAllAgentes();
		model.addAttribute("agentes", new Agentes());
		model.addAttribute("listOfAgentes", listOfAgentes); 
		return "welcomeadmi";
	} 
	
	@RequestMapping(value = "/agente/{idAgente}", method = RequestMethod.GET, headers = "Accept=application/json")
	public Agentes getCountryById(@PathVariable int idAgente) {
		
	
		return agentesService.getAgentes(idAgente);
		
	}

	@RequestMapping(value = "/addAgente", method = RequestMethod.POST, headers = "Accept=application/json")
	public String addCountry(@ModelAttribute("agentes") Agentes agentes) {	
		if(agentes.getIdAgente()==0)
		{
			agentesService.addAgentes(agentes);
		}
		else
		{	
			agentesService.updateAgentes(agentes);
		}
		
		return "redirect:/administrador";
	}

	@RequestMapping(value = "/updateAgente/{idAgente}", method = RequestMethod.GET, headers = "Accept=application/json")
	public String updateCountry(@PathVariable("idAgente") int idAgente,Model model) {
		 model.addAttribute("agentes", this.agentesService.getAgentes(idAgente));
	        model.addAttribute("listOfAgentes", this.agentesService.getAllAgentes());
	       // ModelAndView mav = new ModelAndView();
	    	model.addAttribute("textomodal", "verdadero");
	        return "welcomeadmi";
	}

	@RequestMapping(value = "/deleteAgente/{idAgente}", method = RequestMethod.GET, headers = "Accept=application/json")
	public String deleteCountry(@PathVariable("idAgente") int idAgente) {
		agentesService.deleteAgentes(idAgente);
		 return "redirect:/administrador";

	}	
}
