package com.javasampleapproach.wardeployment;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.support.SpringBootServletInitializer;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication
@EnableAutoConfiguration
@ComponentScan(basePackages={"com.javasampleapproach.wardeployment"})
@EnableJpaRepositories(basePackages="com.javasampleapproach.wardeployment.repository")
public class SpringBootWarDeploymentApplication  extends SpringBootServletInitializer {
	
	@Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        return application.sources(SpringBootWarDeploymentApplication.class);
    }

	public static void main(String[] args) {
		SpringApplication.run(SpringBootWarDeploymentApplication.class, args);
	}
}
