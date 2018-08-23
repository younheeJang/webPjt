/*package com.chartIsWorking.Configuration;

import org.apache.tomcat.jdbc.pool.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.security.oauth2.client.EnableOAuth2Sso;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.oauth2.provider.token.TokenStore;

@Configuration
@EnableOAuth2Sso
public class WebSecurityConfiguration extends WebSecurityConfigurerAdapter {

	 @Autowired
	  public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
	    auth
	      .inMemoryAuthentication()
	        .withUser("user").password("password").roles("user");
	  }
	 
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http
			.authorizeRequests()
			.antMatchers("/", "/css/**", "/js/**", "/img/**", ".jpg",
					"/resources/**", "/index", "/h2-console/**", "/webjars/**")
				.permitAll()
			.anyRequest()
				.authenticated()
			.and()
			.headers()
			.frameOptions().disable()
			.and()
			.formLogin()
			.loginPage("/login")
			.loginProcessingUrl("/user")
			.defaultSuccessUrl("/index")
			.failureUrl("/login?error")
			.usernameParameter("email")
			.permitAll();
	}
	
	@Bean
	public TokenStore JdbcTokenStore(DataSource datasource) {
		return new org.springframework.security.oauth2.provider.token.store.JdbcTokenStore(datasource);
	}

}
*/