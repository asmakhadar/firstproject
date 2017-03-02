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

import com.niit.shoppingcart.dao.PaymentDAO;
import com.niit.shoppingcart.model.Payment;

@Controller
public class PaymentController 
{
	@Autowired
	PaymentDAO paymentDAO;
	
	@Autowired
	Payment payment;
	
	@Transactional
	@RequestMapping("/payment")
	public ModelAndView showPaymentPage(Model m)
	{
		m.addAttribute("payment", new Payment());
		ModelAndView mv = new ModelAndView("payment");
//		mv.addObject("msg","you clicked Billing link");
//		mv.addObject("showpaymentPage","true");
		return mv;
	}	
	
	@Transactional
	@RequestMapping(value="add_payment", method= RequestMethod.POST)
	public String Payment(Model m, @Valid @ModelAttribute("payment") Payment payment, Principal principal)
	{
		payment.setEmail_id(principal.getName());
		System.out.println(payment.getEmail_id());
		System.out.println(payment.getFirst_name());
		System.out.println(payment.getMobile_number());
		boolean value = paymentDAO.addpayment(payment);

		if(value == true)
		{
			m.addAttribute("msg","Addedd");
		}
		else 
		{
			m.addAttribute("error","Error");
		}
		
		return "redirect:/getBilling";
	}

}

