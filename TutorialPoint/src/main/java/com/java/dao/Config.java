package com.java.dao;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

@Configuration
public class Config {

	@Bean(name="databaSource")
	public DriverManagerDataSource getDataSource() {
		DriverManagerDataSource d=new DriverManagerDataSource();
		d.setDriverClassName("org.postgresql.Driver");
		d.setUsername("postgres");
		d.setPassword("SPK@#2023");
		d.setUrl("jdbc:postgresql://192.168.0.96:5432/testDemo");
		return d;
	}
	
	@Bean(name="template")
	public JdbcTemplate getTemplate() {
		JdbcTemplate jd=new JdbcTemplate();
		jd.setDataSource(this.getDataSource());
		return jd;
	}

}
