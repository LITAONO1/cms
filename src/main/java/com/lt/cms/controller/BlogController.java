package com.lt.cms.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by litao on 2016/10/20.
 */
@Controller
@RequestMapping(value = "/blog")
public class BlogController  {

    private Logger logger =  LoggerFactory.getLogger(this.getClass());

    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String index(){
        return "blog/index";
    }

}
