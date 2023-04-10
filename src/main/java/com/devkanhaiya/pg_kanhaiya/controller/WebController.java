package com.devkanhaiya.pg_kanhaiya.controller;

import com.devkanhaiya.pg_kanhaiya.entity.User;
import com.devkanhaiya.pg_kanhaiya.model.AdminURLConstants;
import com.devkanhaiya.pg_kanhaiya.repository.UserRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/krc")
public class WebController {

	@Autowired
	UserRepository userRepository;



	@RequestMapping(value="/login")
	public String getLoginPage(ModelMap map){
		System.out.println("Enter Login");
		return "login";
	}
	
	@RequestMapping(value="/adduser")
	public String addUserPage(ModelMap map){
		System.out.println("Enter usser");
		return "product/add";
	}
	

	

	@RequestMapping(AdminURLConstants.ADD)
	public ModelAndView saveOrUpdateProduct(ModelMap map) {
		System.out.println("Enter Add");

		ModelAndView mav = new ModelAndView();

		mav.setViewName(AdminURLConstants.PRODUCT
				+ AdminURLConstants.ADD);
		User product = new User();

		// check if product exit and having any duplicate name
		
		return mav; 
	}
	




	@GetMapping(AdminURLConstants.LIST)
	public ModelAndView loadProductList(ModelMap map) {

		final ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName(AdminURLConstants.PRODUCT
				+ AdminURLConstants.LIST);
		return modelAndView;
	}
	
}
