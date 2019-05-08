package com.uca.capas.controller;

import java.text.SimpleDateFormat;
import java.util.*;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.uca.capas.domain.Producto;

@Controller
public class MainController {
	@RequestMapping("/")
	public ModelAndView initMain() {
		ModelAndView mav = new ModelAndView();
		Producto producto=new Producto();
		
		mav.addObject("message", "Bienvenidos a spring");
		mav.addObject("producto",producto);
		mav.setViewName("main");
		return mav;
	}
	
	@RequestMapping("/formData")
	public ModelAndView form(@Valid @ModelAttribute Producto producto,BindingResult result) {
		ModelAndView mav = new ModelAndView();
		if(result.hasErrors()) {
			mav.setViewName("main");
		}else {
			String fecha = producto.getFecha();
			String fecha2 = fecha.charAt(8)+""+fecha.charAt(9)+"/"+fecha.charAt(5)+""+fecha.charAt(6)+"/"+fecha.charAt(0)+""+fecha.charAt(1)+""+fecha.charAt(2)+""+fecha.charAt(3)+"";
			//Date fecha3 = new SimpleDateFormat("dd/MM/yyyy").parse(fecha2);
			producto.setFecha(fecha2);
			mav.addObject("message","Producto agregado con exito");
			mav.addObject("producto",producto);
			mav.setViewName("form");
		}
		return mav;
	}
}
