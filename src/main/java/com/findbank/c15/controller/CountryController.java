package com.findbank.c15.controller;


import java.util.List;

import com.findbank.c15.model.Agentes;
import com.findbank.c15.service.AgentesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CountryController {
	
	@Autowired
	AgentesService agentesService;
	
	@RequestMapping(value = "/getAllCountries", method = RequestMethod.GET, headers = "Accept=application/json")
	public String getCountries(Model model) {
		
		List<Agentes> listOfCountries = agentesService.getAllAgentes();
		model.addAttribute("agentes", new Agentes());
		model.addAttribute("listOfCountries", listOfCountries);
		return "countryDetails";
	} 
	
	@RequestMapping(value = "/getCountry/{idAgente}", method = RequestMethod.GET, headers = "Accept=application/json")
	public Agentes getCountryById(@PathVariable int idAgente) {
		return agentesService.getAgentes(idAgente);
	}

	@RequestMapping(value = "/addCountry", method = RequestMethod.POST, headers = "Accept=application/json")
	public String addCountry(@ModelAttribute("agentes") Agentes agentes) {	
		if(agentes.getIdAgente()==0)
		{
			agentesService.addAgentes(agentes);
		}
		else
		{	
			agentesService.updateAgentes(agentes);
		}
		
		return "redirect:/getAllCountries";
	}

	@RequestMapping(value = "/updateCountry/{idAgente}", method = RequestMethod.GET, headers = "Accept=application/json")
	public String updateCountry(@PathVariable("idAgente") int idAgente,Model model) {
		 model.addAttribute("agentes", this.agentesService.getAgentes(idAgente));
	        model.addAttribute("listOfCountries", this.agentesService.getAllAgentes());
	        return "countryDetails";
	}

	@RequestMapping(value = "/deleteCountry/{idAgente}", method = RequestMethod.GET, headers = "Accept=application/json")
	public String deleteCountry(@PathVariable("idAgente") int idAgente) {
		agentesService.deleteAgentes(idAgente);
		 return "redirect:/getAllCountries";

	}	
}
