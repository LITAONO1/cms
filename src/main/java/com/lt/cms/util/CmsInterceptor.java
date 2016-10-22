package com.lt.cms.util;

import com.lt.cms.entity.Category;
import com.lt.cms.mapper.CategoryMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * Created by litao on 2016/10/20.
 */
public class CmsInterceptor implements HandlerInterceptor {

    @Autowired
    CategoryMapper categoryMapper;

    @Override
    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {
        List<Category> categoryList = (List<Category>) httpServletRequest.getSession().getAttribute("category");
        if(null == categoryList){
            categoryList = categoryMapper.findTopCategories();
            httpServletRequest.getSession().setAttribute("categoryList", categoryList);
        }
        return true;
    }

    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}
