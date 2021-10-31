package com.joserodriguez.languages.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.joserodriguez.languages.models.Language;
import com.joserodriguez.languages.services.LanguageService;

@Controller
public class LanguageController {
	private final LanguageService languageService;
	
	public LanguageController( LanguageService languageService ) {
		this.languageService = languageService;
	}
	

    //method to render index page
	@RequestMapping(value = "/languages", method=RequestMethod.GET)
	public String index(@ModelAttribute("language") Language language, Model model) {
		List<Language> languages = languageService.allLanguages();
		model.addAttribute("languages", languages);
		return "index.jsp";
	}
    
    //method for adding and loading all languages when render index page
	@RequestMapping(value="/languages", method=RequestMethod.POST)
	public String add(@Valid @ModelAttribute("addNew") Language language, BindingResult result, Model model) {
        if (result.hasErrors()) {
    		List<Language> languages = languageService.allLanguages();
    		model.addAttribute("languages", languages);
            return "index.jsp";
        }
        else {
            languageService.createLanguage(language);
            return "redirect:/languages";
        }
	}
	
	//method to show the language when render index
	@RequestMapping(value = "/languages/{id}", method=RequestMethod.GET)
	public String show(@PathVariable("id") Long id, Model model) {
		Language language = languageService.findLanguage(id);
		model.addAttribute("language", language);
		return "show.jsp";
	}
	
	
	
	//method for editing a language
	@RequestMapping(value = "/languages/edit/{id}", method=RequestMethod.GET)
	public String edit(@PathVariable("id") Long id, Model model) {
		Language language = languageService.findLanguage(id);
		model.addAttribute("language", language);
		return "edit.jsp";
	}
	
	
	//method for validating before edit a languages
	@RequestMapping(value="/languages/{id}", method=RequestMethod.PUT)
	public String modify(@Valid @ModelAttribute("language") Language language, BindingResult result) {
        if (result.hasErrors()) {
            return "edit.jsp";
        }
        else {
            languageService.createLanguage(language);
            return "redirect:/languages";
        }
	}
		

		
	//method for deleting languages
	@RequestMapping(value = "/languages/delete/{id}", method=RequestMethod.DELETE)
	public String delete(@PathVariable("id") Long id) {
		languageService.deleteLanguage(id);
		return "redirect:/languages";
	}
	
	
	
	


}
