package com.sun.hello;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.remoting.httpinvoker.HttpInvokerServiceExporter;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;

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
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/i18n.do", method = RequestMethod.GET)
	public String home(Locale locale, Model model, HttpInvokerServiceExporter request) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		// RequestMapingHandler�� ���� ���� Locale ��ü�� ����� ���ϴ�.
				logger.info("Welcome i18n! The client locale is {}.", locale);

				// localeResolver �κ��� Locale �� ����� ���ϴ�.
				//logger.info("Session locale is {}.", localeResolver.resolveLocale(request));

				logger.info("site.title : {}", messageSource.getMessage("site.title", null, "default text", locale));
				logger.info("site.count : {}", messageSource.getMessage("site.count", new String[] {"ù��°"}, "default text", locale));
				logger.info("not.exist : {}", messageSource.getMessage("not.exist", null, "default text", locale));
				//logger.info("not.exist �⺻�� ���� : {}", messageSource.getMessage("not.exist", null, locale));

				// JSP ���������� EL �� ����ؼ� arguments �� ���� �� �ֵ��� ���� ������.
				model.addAttribute("siteCount", messageSource.getMessage("msg.first", null, locale));
		
		return "home";
	}
	
}
