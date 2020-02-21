package kr.gudi.web.config;

import javax.servlet.Filter;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

import kr.gudi.web.config.filter.UTF8Filter;
import kr.gudi.web.config.mybatis.MybatisConfig;
import kr.gudi.web.config.spring.RootConfig;
import kr.gudi.web.config.spring.SpringConfig;

public class WebConfig extends AbstractAnnotationConfigDispatcherServletInitializer {

	@Override
	protected Class<?>[] getRootConfigClasses() {
		return new Class[] {RootConfig.class, MybatisConfig.class};
	}

	@Override
	protected Class<?>[] getServletConfigClasses() {
		return new Class[] {SpringConfig.class};
	}

	@Override
	protected String[] getServletMappings() {
		return new String[] {"/"};
	}
	
	@Override
    protected Filter[] getServletFilters() {
        return new Filter[] {new UTF8Filter()};
    }

}
