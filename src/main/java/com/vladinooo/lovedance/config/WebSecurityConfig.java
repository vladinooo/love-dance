package com.vladinooo.lovedance.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.annotation.web.servlet.configuration.EnableWebMvcSecurity;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.RememberMeServices;
import org.springframework.security.web.authentication.rememberme.TokenBasedRememberMeServices;

@Configuration
@EnableWebMvcSecurity
public class WebSecurityConfig  extends WebSecurityConfigurerAdapter {
	
	
	@Value("${rememberMe.privateKey}")
	private String rememberMeKey;
	
	@Autowired
	private UserDetailsService userService;
		
	@Bean
    public PasswordEncoder passwordEncoder() {
      return new BCryptPasswordEncoder();
    }
	
	@Bean
    public RememberMeServices rememberMeServices() {
        TokenBasedRememberMeServices rememberMeServices = new TokenBasedRememberMeServices(rememberMeKey, userService);
        return rememberMeServices;   
    }
	
    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
        	.csrf().disable()
            .authorizeRequests()
                .antMatchers(
                		"/",
                		"/static/**",
                		"/home",
                        "/contact-me",
                        "/contact-me.json",
                		"/signup",
                        "/signup.json",
                        "/signup/confirm",
                        "/signup/confirm.json",
                		"/login",
                        "/login.json",
                		"/forgot-password",
                        "/forgot-password.json",
                		"/reset-password/*",
                        "/reset-password.json",
                        "/blog/articles",
                        "/blog/articles/article",
                		"/error").permitAll()
                .anyRequest().authenticated();
        http
            .formLogin()
                .loginPage("/login")
                .defaultSuccessUrl("/account/bookings")
                .permitAll().and()
                .rememberMe().key(rememberMeKey).rememberMeServices(rememberMeServices()).and()
            .logout()
                .permitAll();
    }
    
	@Autowired
    @Override
    protected void configure(AuthenticationManagerBuilder authManagerBuilder) throws Exception {
        authManagerBuilder.userDetailsService(userService).passwordEncoder(passwordEncoder());
    }

}