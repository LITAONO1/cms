package com.lt.cms.controller;

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

        List<Category> categoryList = categoryMapper.findIndexCategories();
        List<Article> articleList = new ArrayList<>();
        for (Category category : categoryList) {
            PageHelper.startPage(0, 5);
            List<Article> articles = articleMapper.findArticles(category.getName());
            articleList.addAll(articles);
        }
        map.put("indexList", categoryList);
        map.put("articleList", articleList);

        return "blog/index";
    }

    @RequestMapping(value = "/admin", method = RequestMethod.GET)
    public String admin(){
        return "blog/admin/login";
    }

    @RequestMapping(value = "/admin/index", method = RequestMethod.GET)
    public String adminIndex(){
        return "blog/admin/index";
    }

    @RequestMapping(value = "/{category}", method = RequestMethod.GET)
    public String list(@PathVariable("category") String category, HttpServletRequest request,
                       Map<String, Object> map, String page, String pageSize) {
        request.getSession().setAttribute("action", category);
        Category ca = categoryMapper.findCategory(category);
        if ("0".equals(ca.getType())) {
            PageHelper.startPage(null==page?0:(Integer.parseInt(page)-1)*Integer.parseInt(pageSize), null==pageSize?0:Integer.parseInt(pageSize));
            List<Article> articles = articleMapper.findArticles(category);
            map.put("articles", articles);
            int count = articleMapper.findArticleCount(category);
            map.put("count", count);
            map.put("page", page);
            return "blog/list";
        } else if ("1".equals(ca.getType())) {
            Article article = articleMapper.findArticleByCategory(String.valueOf(ca.getId()));
            map.put("article", article);
            map.put("type", ca.getType());
            return "blog/detail";
        }
        return null;
    }

    @RequestMapping(value = "/{category}/{id}", method = RequestMethod.GET)
    public String detail(@PathVariable("category") String category, @PathVariable("id") String id,
                         HttpServletRequest request, Map<String, Object> map) {
        request.getSession().setAttribute("action", category);
        String preId = articleMapper.findPreArticle(id, category); // 上一篇ID
        String nextId = articleMapper.findNextArticle(id, category);// 下一篇id
        Article article = articleMapper.findArticle(id);
        article.setPreId(null == preId ? 0 : Integer.parseInt(preId));
        article.setNextId(null == nextId ? 0 : Integer.parseInt(nextId));
        map.put("article", article);
        map.put("type", "0");
        return "blog/detail";
    }

}
