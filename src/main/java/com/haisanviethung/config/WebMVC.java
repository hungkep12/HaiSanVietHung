package com.haisanviethung.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

//Day la file cau hinh MVC cho project

@Configuration /*bao hiệu cho spring-boot đây la file cấu hình*/
@EnableWebMvc  /*file cấu hình nay dùng cho Web-MVC*/
@ComponentScan(basePackages = {"com.haisanviethung"}) /* chi cho Spring-mvc biết nơi chứa các controller*/
public class WebMVC implements WebMvcConfigurer {

//	chỉ cho spring-mvc biết nơi chứa các view đã tạo
	@Bean
	public ViewResolver viewResolver() {
//		ViewResolver allows us to set properties such as prefix or suffix to the view name to generate the final view page URL
		InternalResourceViewResolver bean = new InternalResourceViewResolver();
		
		bean.setViewClass(JstlView.class);
		
		bean.setPrefix("/WEB-INF/views/");
		bean.setSuffix(".jsp");
		
		return bean;
	}
	
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/wp-admin/**").addResourceLocations("classpath:/META-INF/wp-admin/");
		registry.addResourceHandler("/wp-content/**").addResourceLocations("classpath:/META-INF/wp-content/");
		registry.addResourceHandler("/wp-includes/**").addResourceLocations("classpath:/META-INF/wp-includes/");
		
		
	}
}
