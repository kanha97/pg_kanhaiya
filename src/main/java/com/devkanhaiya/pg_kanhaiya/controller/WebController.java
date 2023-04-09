package com.devkanhaiya.pg_kanhaiya.controller;

import com.devkanhaiya.pg_kanhaiya.entity.User;
import com.devkanhaiya.pg_kanhaiya.model.AdminConstants;
import com.devkanhaiya.pg_kanhaiya.model.AdminURLConstants;
import com.devkanhaiya.pg_kanhaiya.repository.UserRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/krc")
public class WebController {

	@Autowired
	UserRepository userRepository;



	@RequestMapping(value="/login")
	public String getLoginPage(ModelMap map){

		return "login";
	}
	

	

	@RequestMapping(AdminURLConstants.ADD)
	public ModelAndView saveOrUpdateProduct(
			@ModelAttribute final User addEditProduct, BindingResult bindingResult) {
		System.out.println("Enter Add");

		if(bindingResult.hasFieldErrors()) {
			ModelAndView modelAndView = new ModelAndView();
			
			modelAndView.addObject("name_error",bindingResult.getFieldError("name").getDefaultMessage());
			modelAndView.addObject("retailerPrice_error",bindingResult.getFieldError("retailerPrice").getDefaultMessage());
			modelAndView.addObject("maximumRetailPrice_error",bindingResult.getFieldError("maximumRetailPrice").getDefaultMessage());
			modelAndView.addObject("distributorPrice_error",bindingResult.getFieldError("distributorPrice").getDefaultMessage());
			modelAndView.addObject("orgWeight_error",bindingResult.getFieldError("orgWeight").getDefaultMessage());
			modelAndView.addObject("unit_error",bindingResult.getFieldError("unit").getDefaultMessage());
			modelAndView.addObject("weight_error",bindingResult.getFieldError("weight").getDefaultMessage());
			modelAndView.addObject("packSize_error",bindingResult.getFieldError("packSize").getDefaultMessage());
			modelAndView.addObject("cartonNo_error",bindingResult.getFieldError("cartonNo").getDefaultMessage());
			modelAndView.addObject("packagingType_error",bindingResult.getFieldError("packagingType").getDefaultMessage());
			modelAndView.addObject("productId_error",bindingResult.getFieldError("productId").getDefaultMessage());
			modelAndView.addObject("plant_error",bindingResult.getFieldError("plant").getDefaultMessage());
			
			modelAndView.setViewName(AdminURLConstants.PRODUCT
					+ AdminURLConstants.ADD);

			return modelAndView;
		}
		
		ModelAndView mav = new ModelAndView();

		mav.setViewName(AdminURLConstants.PRODUCT
				+ AdminURLConstants.ADD);
		User product = new User();

		// check if product exit and having any duplicate name
		
		return mav; 
	}
	




	@GetMapping(AdminURLConstants.LIST)
	public ModelAndView loadProductList() {

		final ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName(AdminURLConstants.PRODUCT
				+ AdminURLConstants.LIST);
		return modelAndView;
	}
	
}
