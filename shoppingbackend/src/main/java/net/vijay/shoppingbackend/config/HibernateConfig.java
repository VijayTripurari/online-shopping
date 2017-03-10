package net.vijay.shoppingbackend.config;


import java.io.IOException;
import java.util.Properties;

import javax.sql.DataSource;

import org.apache.commons.dbcp2.BasicDataSource;
import org.hibernate.SessionFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

@Configuration
@ComponentScan(basePackages="{net.vijay.shoppingbackend.dto}")
@EnableTransactionManagement
public class HibernateConfig {

	// change the below depending on the DBMS you choose.
	private final static String DATABASE_URL = "jdbc:h2:tcp://localhost/~/onlineshopping1" ;
	private final static String DATABASE_DRIVER = "org.h2.Driver";
	private final static String DATABASE_DIALECT = "org.hibernate.dialect.H2Dialect";
	private final static String DATABASE_USERNAME =  "sa" ;
	private final static String DATABASE_PASSWORD  = "";
	
	// datasouce bean will be available
@Bean
public DataSource  getDataSource()
{
	// providing the database connection info
	  BasicDataSource  dataSource = new BasicDataSource();
	    dataSource.setUrl(DATABASE_URL);
	    dataSource.setDriverClassName(DATABASE_DRIVER);
	    dataSource.setUsername(DATABASE_USERNAME);
	    dataSource.setPassword(DATABASE_PASSWORD);
	return dataSource;
}

 // session factory bean will be  created

@Bean
public SessionFactory  getSessionFactory(DataSource dataSource)
{
  LocalSessionFactoryBuilder builder = new LocalSessionFactoryBuilder(dataSource);
    
  builder.addProperties(getHibernateProperties());
  builder.scanPackages("net.vijay.shoppingbackend.dto");
  
	return    builder.buildSessionFactory();
	
	
}


private Properties getHibernateProperties() {

	Properties properties = new Properties();
	
	  properties.put("hibernate.dialect", DATABASE_DIALECT);
	  properties.put("hibernate.show_sql", "true");
	  properties.put("hibernate.format_sql", "true");
	  properties.put("hibernate.hbm2ddl.auto", "update");
		
	return properties;
}
// transaction manager bean
@Bean
public HibernateTransactionManager  getTransactionManager(SessionFactory sessionFactory)
{
	HibernateTransactionManager transactionManager =  new HibernateTransactionManager(sessionFactory);
	    return transactionManager;
	
}


@Bean(name = "multipartResolver")
public CommonsMultipartResolver getMultipartResolver()throws IOException
{
	
	long maxUploadSize = 1000000;
	CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver();
	multipartResolver.setMaxUploadSize(maxUploadSize);
	  return multipartResolver;
}

	

}