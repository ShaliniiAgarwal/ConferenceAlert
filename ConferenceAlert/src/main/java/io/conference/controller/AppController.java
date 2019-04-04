package io.conference.controller;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import io.conference.Entity.Conference;
import io.conference.Entity.Admin;
import io.conference.repository.AdminRepo;
import io.conference.repository.ConfRepository;
import io.conference.service.ConfService;
import io.conference.service.MailService;

//import org.springframework.web.servlet.ModelAndView;
@Controller
public class AppController {
	@Autowired
	private MailService mailService; 
	@Autowired
	private ConfRepository repo;
	@Autowired
	private AdminRepo adminRepo;
	@Autowired
	private ConfService service;
	@RequestMapping(value="/")
   //@RequestMapping(value = "", method = RequestMethod.GET)
	public String Welcome() {
		//ModelAndView mv=new ModelAndView("redirect:/index");
	   return "index";
	}
	@RequestMapping(value="/login")
	public String login() {
		//ModelAndView mv=new ModelAndView("redirect:/dashboard");
	   return "login";
	}
	@RequestMapping ("/login-user")
	public  ModelAndView loginUser(@ModelAttribute Admin admin, HttpServletRequest request,HttpSession session,
			@RequestParam("name") String name) {
		if(adminRepo.findByNameAndPassword(admin.getName(),admin.getPassword())!=null) {
			session.setAttribute("name",name);
			ModelAndView mv = new ModelAndView("redirect:/dashboard");
			return mv;
		}
		else {
			request.setAttribute("error", "Invalid Username or Password");
			request.setAttribute("mode", "MODE_LOGIN");
			ModelAndView mv = new ModelAndView("redirect:/login");
			return mv;
			
		}
	}
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		try {
			session.removeAttribute("name");
			session.invalidate();
			//ModelAndView mv = new ModelAndView("redirect:/login");
		}
		catch(NullPointerException e) {
			return "/home";			
		}
		return "login";
	}
	@RequestMapping(value="/home")
	 public String init(HttpServletRequest req) {
		 req.setAttribute("mode", "MODE_VIEW");
			req.setAttribute("details",service.getUniqueTopic());
			req.setAttribute("uniquecity",service.getUniqueCity());
		 return "index";
	 }
	
	@RequestMapping(value="/addevent")
	 public String initadd(HttpServletRequest req) {
		 req.setAttribute("mode", "MODE_ADD");
		 return "index";
	 }
	/*@RequestMapping(value="/SaveEventHome",method=RequestMethod.POST)
	 public ModelAndView initaddinhome(HttpServletRequest req,Conference conference) {
		ModelAndView mv=new ModelAndView("redirect:/home");
		 repo.save(conference);
		 return mv;
	 }*/
	@RequestMapping(value="/SaveEventHome",method=RequestMethod.POST)
	 public String initaddinhome(@ModelAttribute("conference") Conference conference,ModelMap modelMap) {
		try {
			 String content="Organizer Name"+conference.getOrgpername()+"</br>";
			 content+="Orgnization Name"+conference.getOrgby()+"</br>";
			 content+="Password"+conference.getEventpassword()+"</br>";
			 content+="Event Name"+conference.getEventname()+"</br>";
			 content+="Event Category"+conference.getTopic()+"</br>";
			 content+="Event Topic"+conference.getSubtopic()+"</br>";
			 content+="City"+conference.getCity()+"</br>";
			 content+="Event Topic"+conference.getSubtopic()+"</br>";
			 content+="contact with this email address: shaliniagarwal.cs@gmail.com";
			 mailService.send("shaliniagarwal.cs@gmail.com",conference.getEmail(),conference.getSubject(),content);
			 modelMap.put("msg","Done!");
			 repo.save(conference);
		}
		catch(Exception e) {
			modelMap.put("msg",e.getMessage());
		}
		
		return "index";
	 }

	@RequestMapping(value="/dashboard")
	 public String Admin(HttpServletRequest req) {
		    req.setAttribute("mode", "MODE_HOME");
			req.setAttribute("details",service.getAllDetails());
		 return "dashboard";
	 }
	@RequestMapping(value="/view/{id}")
	 public String view(HttpServletRequest req,@PathVariable("id") int id) {
		    req.setAttribute("mode", "MODE_VIEW");
			req.setAttribute("confer",repo.findById(id).orElse(null));
		 return "dashboard";
	 }
	@RequestMapping(value="/edit/{id}")
	 public String edit(HttpServletRequest req,@PathVariable("id") int id) {
		    req.setAttribute("mode", "MODE_UPDATE");
			req.setAttribute("confer",repo.findById(id).orElse(null));
		 return "dashboard";
	 }
	@RequestMapping(value="/update",method=RequestMethod.POST)
	 public ModelAndView update(Conference confer,HttpServletRequest req) {
		   // req.setAttribute("mode", "MODE_HOME");
		ModelAndView mv=new ModelAndView("redirect:/dashboard");
			req.setAttribute("confer",repo.save(confer));
		 return mv;
	 }
	@RequestMapping(value="/save",method=RequestMethod.POST)
	 public ModelAndView Add(Conference conference) {
		ModelAndView mv=new ModelAndView("redirect:/dashboard");
		repo.save(conference);
		//	req.setAttribute("details",service.getAllDetails());
		 return mv;
	 }
	@RequestMapping(value="/delete/{id}",method=RequestMethod.GET)
    public ModelAndView getDelete(@PathVariable("id") int id){
        ModelAndView mv = new ModelAndView("redirect:/dashboard");
     
       repo.deleteById(id);
        return mv;
    }
	
	 @RequestMapping(value="/topicwise/{topic}")
	    public String getOne(@PathVariable("topic") String topic,HttpServletRequest req){
		 req.setAttribute("mode", "MODE_All");
		 req.setAttribute("details",service.getInfoByTopic(topic));
		 return "topicwise";
	    }
	 @RequestMapping(value="/topicwiseview/{id}")
	    public String gettopicview(@PathVariable("id") int id,HttpServletRequest req){
		 req.setAttribute("mode", "MODE_VIEW");
		 req.setAttribute("confer",repo.findById(id).orElse(null));
		 return "topicwise";
	    }
	 @RequestMapping("/citywise/{city}")
	 public  String city(@PathVariable("city") String city,HttpServletRequest req) {
		 req.setAttribute("mode", "MODE_All");
		 req.setAttribute("details",service.getInfoByCity(city));
		 return "citywise";
	   }
	 @RequestMapping(value="/citywiseview/{id}")
	    public String getcityview(@PathVariable("id") int id,HttpServletRequest req){
		 req.setAttribute("mode", "MODE_VIEW");
		 req.setAttribute("confer",repo.findById(id).orElse(null));
		 return "citywise";
	    }
}
