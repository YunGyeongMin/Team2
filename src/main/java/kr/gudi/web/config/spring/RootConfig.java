package kr.gudi.web.config.spring;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import kr.gudi.web.bean.Test;

@Configuration
public class RootConfig {
	
	@Bean
	public Test test() {
		return new Test();
	}
	
}
