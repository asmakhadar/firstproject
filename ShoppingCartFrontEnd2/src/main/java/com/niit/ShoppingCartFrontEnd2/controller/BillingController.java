package com.niit.ShoppingCartFrontEnd2.controller;

import java.security.Principal;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcart.dao.BillingDAO;
import com.niit.shoppingcart.model.Billing;


@Controller
public class BillingController 
	{	
		@Autowired
		BillingDAO billingDAO;
		
		@Autowired
		Billing billing;
		
		@Transactional
		@RequestMapping("getBilling")
		public ModelAndView showBillingPage(Model m)
		{
			m.addAttribute("billing", new Billing());
			ModelAndView mv = new ModelAndView("billing");
//			mv.addObject("msg","you clicked Billing link");
//			mv.addObject("showBillingPage","true");
			return mv;
		}	
		
		@Transactional
		@RequestMapping(value="thankyou", method= RequestMethod.POST)
		public String Billing(Model m, @Valid @ModelAttribute("billing") Billing billing,Principal principal)
		{
			billing.setEmail_id(principal.getName());
			System.out.println(billing.getEmail_id());
			boolean value = billingDAO.addBilling(billing);
			
			if(value == true)
			{
				m.addAttribute("msg","sucess");
			}
			else
			{
				m.addAttribute("error","error");
			}
			
			return "thanks";
		}
	
	}
	
	
	
