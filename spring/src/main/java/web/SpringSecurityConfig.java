package web;



import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

@Configuration
public class SpringSecurityConfig extends WebSecurityConfigurerAdapter{
	//"/index/**","/cliente","/cliente/**","/compu","/compu/**","/empleado","/empleado/**","/inventario","/inventario/**",
	@Override
	protected void configure(HttpSecurity http) throws Exception{
		http.authorizeRequests().antMatchers("/","/index","/index/**","/cliente","/cliente/**","/compu","/compu/**","/empleado","/empleado/**","/inventario","/inventario/**","/js/**","/css/**","/img/**").permitAll()
		//.antMatchers("/index","/index/**").hasRole("ADMIN")
		.anyRequest().authenticated()
		.and().formLogin().loginPage("/index/login").permitAll()
		.and().logout().invalidateHttpSession(true)
		.clearAuthentication(true)
		.logoutRequestMatcher(new AntPathRequestMatcher("/logout"))
		.logoutSuccessUrl("/index");
	}
	
	@Override
	protected void configure(AuthenticationManagerBuilder auth)throws Exception{
		auth.inMemoryAuthentication()
		.withUser("bbbb").password("{noop}bbbb").roles("ADMIN");
	}
}
