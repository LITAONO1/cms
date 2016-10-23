package com.lt.cms.controller;

import com.lt.cms.entity.Result;
import com.lt.cms.entity.User;
import com.lt.cms.mapper.UserMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by litao on 2016/10/20.
 */
@Controller
@RequestMapping(value = "/user")
public class UserController {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    UserMapper userMapper;

    @ResponseBody
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public Result login(String userName, String password, HttpServletRequest request) {
        User user = userMapper.findUser(userName);
        if (null == user) {
            return new Result(false, "用户不存在");
        }
        if (!user.getPassword().equals(password)) {
            return new Result(false, "用户名密码不正确");
        }
        request.getSession().setAttribute("user", user);
        return new Result(true, "登录成功");
    }

    public Result register(String userName, String password) {
        User user = userMapper.findUser(userName);
        if (null != user) {
            return new Result(false, "用户名已经存在");
        }
        return null;
    }

    public String forgetPassword() {
        return null;
    }

    public String modifyPassword() {
        return null;
    }

    public String findUser() {
        return null;
    }

    public String findUsers() {
        return null;
    }

    public String findUsersPage() {
        return null;
    }

    public String insertUser() {
        return null;
    }

    public String deleteUser() {
        return null;
    }

    public String modifyUser() {
        return null;
    }

}
