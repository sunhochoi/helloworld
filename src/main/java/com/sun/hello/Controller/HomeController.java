package com.sun.hello.Controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.remoting.httpinvoker.HttpInvokerServiceExporter;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;

import com.sun.hello.model.JoinVO;
import com.sun.hello.service.JoinMemberService;
import com.sun.hello.service.JoinMemberServiceImpl;


/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Autowired
	SessionLocaleResolver localeResolver;

	@Autowired
	MessageSource messageSource;
	
	@Autowired
	JoinMemberService joinService;

	/**
	 * Simply selects the home view to render by returning its name.i18n.do ��� ���� ����
	 */
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home(Locale locale, Model model, HttpInvokerServiceExporter request) {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		// RequestMapingHandler�� ���� ���� Locale ��ü�� ����� ���ϴ�.
		logger.info("Welcome i18n! The client locale is {}.", locale);

		// localeResolver �κ��� Locale �� ����� ���ϴ�.
		// logger.info("Session locale is {}.", localeResolver.resolveLocale(request));

		logger.info("site.title : {}", messageSource.getMessage("site.title", null, "default text", locale));
		logger.info("site.count : {}",
				messageSource.getMessage("site.count", new String[] { "ù��°" }, "default text", locale));
		logger.info("not.exist : {}", messageSource.getMessage("not.exist", null, "default text", locale));
		// logger.info("not.exist �⺻�� ���� : {}", messageSource.getMessage("not.exist",
		// null, locale));

		// JSP ���������� EL �� ����ؼ� arguments �� ���� �� �ֵ��� ���� ������.
		model.addAttribute("siteCount", messageSource.getMessage("msg.first", null, locale));

		return "home";
	}

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index(Locale locale, Model model, HttpInvokerServiceExporter request) {
		logger.info("Welcome home! The client locale is {}.", locale);

		return "index";
	}

	@RequestMapping(value = "/testRequest", method = RequestMethod.GET)
	public String testRequest(Locale locale, Model model, HttpInvokerServiceExporter request) {

		return "test";
	}

	@RequestMapping(value = "/loginA", method = RequestMethod.GET)
	public String loginA(Locale locale, Model model, HttpInvokerServiceExporter request) {
		logger.info("Welcome home! The client locale is {}.", locale);

		return "loginA";
	}

	@RequestMapping(value = "/loginB", method = RequestMethod.POST)
	public String loginB(Locale locale, Model model, HttpServletRequest request) {
		String userId = request.getParameter("userId");

		String pwd = request.getParameter("userPwd");
		System.err.println("userId " + userId);
		System.err.println("pwd " + pwd);

		return "loginB";
	}

	@ResponseBody
	@RequestMapping(value = "/ex02", method = RequestMethod.GET, produces = "application/text; charset=utf8")
	public String ex02(@RequestParam("param1") String param1, @RequestParam("param2") String param2) {
		System.err.println("param1 " + param1 + " param2 " + param2);

		return "S";
	}

	@ResponseBody
	@RequestMapping(value = "/ex03", method = RequestMethod.POST, produces = "application/text; charset=utf8")
	public String ex03(@RequestParam("userId") String userId, @RequestParam("pwd") String pwd) {
		System.err.println("userId " + userId + " pwd " + pwd);

		return "S";
	}

	@RequestMapping(value = "/ex04", method = RequestMethod.POST)
	public String ex04(JoinVO jvo) {
		System.out.println("ex04");
//		System.err.println("userId " + jvo.getId());
//		System.err.println("pwd " + jvo.getPw());

		return "S";
	}

//	@RequestMapping(value = "/ex05", method = RequestMethod.POST)
//	public String ex05(joinVO jvo) {
//		System.out.println("ex05");
//		System.err.println("userId "+jvo.getUserId());
//		System.err.println("pwd "+jvo.getPwd());
//	
//		return "S";
//	}

	@PostMapping("/ex05")
	public String ex05(JoinVO jvo) {
		System.out.println("ex05");
		System.err.println("userId " + jvo.getId());
		System.err.println("userName " + jvo.getUserName());
		System.err.println("pwd " + jvo.getPw());
		System.err.println("email " + jvo.getEmail());
		System.err.println("addr1 " + jvo.getAddr1());
		System.err.println("addr2 " + jvo.getAddr2());
		System.err.println("agreeYn " + jvo.getAgreeYn());

		return "S";
	}

//	@ResponseBody
//	@PostMapping("/ex06")
//	public String ex06(@RequestBody joinVO jvo) {
//		System.out.println("ex06");
//		System.err.println("userId "+jvo.getUserId());
//		System.err.println("pwd "+jvo.getPwd());
//	
//		return "S";
//	}

	@ResponseBody
	@PostMapping("/ex06")
	public String ex06(@RequestBody HashMap<String, Object> map) {
		System.out.println("ex06");
		System.err.println("map " + map);

		return "S";

	}

	@ResponseBody
	@PostMapping("/joinMember")
	public String joinMember(JoinVO jvo) {

		// map���� �����͸� �� ���� �´�. ��

		System.out.println("2222222222222222");

		// String userId = jdto.
		// System.err.println("jvo : "+ jvo.getUserId());
		// , produces = "application/text; charset=utf8"
		
		  String userId = jvo.getId();
		  
		  String userName = jvo.getUserName();
		  
		  String pwd = jvo.getPw();
		  
		  String email = jvo.getEmail();
		  
		  String addr1 = jvo.getAddr1();
		  
		  String addr2 = jvo.getAddr2();
		  
		  String agreeYn = jvo.getAgreeYn();
		  
		  System.err.println("userId "+ userId); 
		  System.err.println("userName "+userName); 
		  System.err.println("pwd "+ pwd); 
		  System.err.println("email "+email); 
		  System.err.println("addr  "+ addr1 + addr2);
		  System.err.println("agreeYn  "+agreeYn);
		  
		  // java안녕 
		  // 
		  
		  String successYN = "S";
			
		  try {
			  joinService.save(jvo);
				  
		  } catch (Exception e) {

			  e.printStackTrace();
			  successYN = "F";		
		  }
		 
		  

	

		return successYN;
	}

	@RequestMapping(value = "/joinMembership", method = RequestMethod.GET)
	public String joinMembership(Locale locale, Model model, HttpServletRequest request) {

		return "joinMembership";
	}
}
