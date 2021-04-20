package com.theismann.driverslicense.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.theismann.driverslicense.models.License;
import com.theismann.driverslicense.models.Person;
import com.theismann.driverslicense.services.LicenseService;
import com.theismann.driverslicense.services.PersonService;

@Controller
public class LicenseController {
	
	private final LicenseService licenseService;	
	
	public LicenseController(LicenseService service) {
		this.licenseService = service;
	}
	@RequestMapping("/")
	public String index() {
		return "index.jsp";
	}
	@Autowired
	private PersonService personService;
	@RequestMapping("/licenses/new")
	public String newLicense(@ModelAttribute("license") License license, Model model) {
		List<Person> personList = personService.allPersons();
		model.addAttribute("personList", personList);
		return "newLicense.jsp";
	}
	
	@RequestMapping(value="/licenses/create", method=RequestMethod.POST)
    public String create(@Valid @ModelAttribute("license") License license, BindingResult result) {
        if (result.hasErrors()) {
            return "newLicense.jsp";
        } else {
        	String number = licenseService.generateLicenseNumber();
        	license.setNumber(number);
      
        	licenseService.addLicense(license);
            return "redirect:/persons/" +license.getId();
        }
	}
}
