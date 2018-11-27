package top.sinch.blog.core.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import top.sinch.blog.core.Interceptor.GlobalInterceptor;

/**
 * MVC配置类
 *
 * @Author sincH
 * @Date 2018/11/15
 */
@Configuration
public class WebMvcConfig implements WebMvcConfigurer {
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(new GlobalInterceptor()).addPathPatterns("/**").excludePathPatterns("/swagger-ui.html", "/v2/api-docs", "/swagger-resources/**","/articles/{id}");
    }

    @Override
    public void addViewControllers(ViewControllerRegistry registry) {
        registry.addViewController("/articles/{id}").setViewName("article.html");
    }
}
