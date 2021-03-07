package com.haisanviethung.config;

import javax.servlet.ServletContext;

import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.filter.CharacterEncodingFilter;

public class WebInitializer implements WebApplicationInitializer {
	public void onStartup(ServletContext context) {
		CharacterEncodingFilter characterEncodingFilter= new CharacterEncodingFilter("UTF-8", true);
		context.addFilter("encodingFilter", characterEncodingFilter).addMappingForUrlPatterns(null, false, "/*");
		
	}
}
