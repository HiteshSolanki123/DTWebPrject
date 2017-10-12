package com.niit.config;

import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate4.HibernateTransactionManager;
import org.springframework.orm.hibernate4.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.niit.dao.ProductDaoImpl;
import com.niit.dao.UserDaoImpl;
import com.niit.model.*;


@Configuration
@ComponentScan("com.niit.config")
@EnableTransactionManagement
public class ApplicationContextConfig {
	public static Logger logger= Logger.getLogger("ApplicationContextConfig");
	  @Bean(name = "dataSource")
	    public DataSource getDataSource() {
		  DriverManagerDataSource dataSource = new DriverManagerDataSource();
	    	dataSource.setDriverClassName("org.h2.Driver");
	    	dataSource.setUrl("jdbc:h2:tcp://localhost/~/Shop");
	    	dataSource.setUsername("sa");
	    	dataSource.setPassword("");
	    	
	    	return dataSource;
	    }
	    private Properties getHibernateProperties() {
	    	Properties properties = new Properties();
	    	properties.put("hibernate.show_sql", "true");
	    	properties.put("hibernate.dialect", "org.hibernate.dialect.H2Dialect");
	    	properties.put("hibernate.hbm2ddl.auto", "update");
	    	return properties;
	    }	    
	    @Autowired
	    @Bean(name = "sessionFactory")
	    public SessionFactory getSessionFactory(DataSource dataSource) {
	    	LocalSessionFactoryBuilder sessionBuilder = new LocalSessionFactoryBuilder(dataSource);
	    	sessionBuilder.addProperties(getHibernateProperties());
	    	sessionBuilder.addAnnotatedClass(User.class);
	    	sessionBuilder.scanPackages("com.niit.model");
	    	return sessionBuilder.buildSessionFactory();
	    }
	    @Autowired
	    @Bean(name="UserDaoImpl")
	    public UserDaoImpl getUserDao(SessionFactory sessionFactory)
	    {
	    	return new UserDaoImpl(sessionFactory);
	    }
	    @Autowired
	    @Bean(name="ProductDaoImpl")
	    public ProductDaoImpl getProductDao(SessionFactory sessionFactory)
	    {
	    	return new ProductDaoImpl();
	    }
		@Autowired
		@Bean(name = "transactionManager")
		public HibernateTransactionManager getTransactionManager(SessionFactory sessionFactory) 
		{
			HibernateTransactionManager transactionManager = new HibernateTransactionManager(sessionFactory);
			return transactionManager;
		}
		
		
    
}