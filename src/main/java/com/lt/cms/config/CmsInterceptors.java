package com.lt.cms.config;

import com.lt.cms.util.CmsInterceptor;
import com.lt.cms.util.LoginInterceptor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

/**
 * 拦截器
 * Created by litao on 2016/10/20.
 */
@Configuration
public class CmsInterceptors extends WebMvcConfigurerAdapter {


    @Bean
    public CmsInterceptor cmsInterceptor(){
        return new CmsInterceptor();
    }

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        // 多个拦截器组成一个拦截器链
        // addPathPatterns 用于添加拦截规则
        // excludePathPatterns 用户排除拦截
        registry.addInterceptor(cmsInterceptor()).addPathPatterns("/**");
//        registry.addInterceptor(new LoginInterceptor()).addPathPatterns("/**");
//        registry.addInterceptor(new MyInterceptor2()).addPathPatterns("/**");
        super.addInterceptors(registry);
    }

}
