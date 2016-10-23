package com.lt.cms.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by litao on 2016/10/23.
 */
@Controller
@RequestMapping(value = "/admin/category")
public class CategoryController {

    @RequestMapping(value = "/categoryList", method = RequestMethod.GET)
    public String categoryList(){
        return "blog/admin/blog/categoryList";
    }

}
