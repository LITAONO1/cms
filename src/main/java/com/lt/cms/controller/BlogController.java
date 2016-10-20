package com.lt.cms.controller;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.lt.cms.entity.Article;
import com.lt.cms.entity.Category;
import com.lt.cms.mapper.ArticleMapper;
import com.lt.cms.mapper.CategoryMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Created by litao on 2016/10/20.
 */
@Controller
public class BlogController {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    CategoryMapper categoryMapper;

    @Autowired
    ArticleMapper articleMapper;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String main() {
        return "redirect:/index";
    }

    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String index(HttpServletRequest request, Map<String, Object> map) {
        request.getSession().setAttribute("action", "index");

        List<Category> categoryList = categoryMapper.findCategories();
        List<Article> articleList = new ArrayList<>();
        for(Category category : categoryList){
            PageHelper.startPage(0, 5);
            List<Article> articles = articleMapper.findArticles(category.getName());
            articleList.addAll(articles);
        }
        map.put("categoryList", categoryList);
        map.put("articleList", articleList);

        return "blog/index";
    }

    @RequestMapping(value = "/{category}", method = RequestMethod.GET)
    public String list(@PathVariable("category") String category, HttpServletRequest request,
                       Map<String, Object> map) {
        request.getSession().setAttribute("action", category);

        PageHelper.startPage(0, 5);
        List<Article> articles = articleMapper.findArticles(category);
        map.put("articles", articles);

        return "blog/list";
    }

    @RequestMapping(value = "/{category}/{id}", method = RequestMethod.GET)
    public String detail(@PathVariable("category") String category, @PathVariable("id") String id,
                         HttpServletRequest request, Map<String, Object> map) {
        request.getSession().setAttribute("action", category);

        Article article = articleMapper.findArticle(id);
        map.put("article", article);

        return "blog/detail";
    }

}
