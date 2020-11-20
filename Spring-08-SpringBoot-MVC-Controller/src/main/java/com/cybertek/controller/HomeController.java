package com.cybertek.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {

    @RequestMapping("/")
    public String getRequestMapping() {

        return "Home";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/cybertek")
    public String getRequestMapping2() {

        return "Home";
    }

    @RequestMapping(method = RequestMethod.POST, value = "/cybertek")
    public String getRequestMapping3() {

        return "Home";
    }

    @GetMapping("/spring")
    public String getMappingEx () {
        return "Home";
    }

    @PostMapping("/spring")
    public String postMappingEx2() {
        return "Home";
    }

}
