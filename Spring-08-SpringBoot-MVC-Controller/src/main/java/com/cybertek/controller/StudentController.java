package com.cybertek.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/student")
public class StudentController {

//  Requestion mapping directs to /student
    @GetMapping("/show")
    public String showForm(){
        return "home";
    }
}
