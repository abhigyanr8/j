package com.example.demo.controller;

import java.util.List;
import java.sql.Date;
import java.util.Optional;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.dao.CCRepRepo;
import com.example.demo.dao.CustomerRepo;
import com.example.demo.dao.IssueDetailsRepo;
import com.example.demo.model.CCRepresentative;
import com.example.demo.model.Customer;
import com.example.demo.model.IssueDetail;



@Controller
public class LoginController 
{
	
	@Autowired
	CustomerRepo cr;
	
	@Autowired
	IssueDetailsRepo idr;
	
	@Autowired
	CCRepRepo ccrr;
	
	@RequestMapping("/")
	  public String showLoginPage()
	  {
		return "login";
	  }
     
	@RequestMapping("/v")
	public String showCustomerPage(@Valid Customer customer,BindingResult bindingresult)
	{
		if(bindingresult.hasErrors())
			 {
			System.out.println(bindingresult);
			    return "login";
			    
			 }
		else
	        {
			   cr.save(customer);
			   return "customerform";
	        }
	    	
	
	}
	
	@RequestMapping("/i")
	 public ModelAndView issueGen(@RequestParam("button") String button,@RequestParam("id") String id)
	 {
		ModelAndView mv = new ModelAndView();
		
		if(button.equals("raise_issue"))
			  mv.setViewName("raiseissue");
		else
		{
			 IssueDetail is = idr.findById(id).orElse(new IssueDetail());
			 mv.addObject("is",is);
			 mv.setViewName("customerissue");
		}
		return mv;
		
	 }
	@RequestMapping("/id")
	public ModelAndView issueRaised(@RequestParam("custIssueId") String id,@RequestParam("issueReportDate") Date d,@RequestParam("custId") String cid,@RequestParam("category") String cat,@RequestParam("description") String desc)
	{
		int min=ccrr.findminissue();
	   List<CCRepresentative> ccr =ccrr.findByIssuesInProgress(min);
			CCRepresentative ccr1 = new CCRepresentative();
			ccr1=ccr.get(0);
	   
		IssueDetail i = new IssueDetail(id,d,cid,cat,desc,"open",ccr1.getCcRId());
		idr.save(i);
		
		if(ccr1.getIssueIds().contentEquals("0"))
			ccr1.setIssueIds(i.getCustIssueId());
		else	
		    ccr1.setIssueIds(ccr1.getIssueIds()+";"+i.getCustIssueId());
		ccr1.setIssuesInProgress(ccr1.getIssuesInProgress()+1);
		ccrr.save(ccr1);
	
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("i",i);
	    mv.setViewName("issueraisede");
	    return mv;
	}
	@RequestMapping("/c")
	public String customerform()
	{
		return "customerform";
	}
	 
}
