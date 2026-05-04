package com.job.Job_Application;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class HomeController {
    @RequestMapping("/home")
     public String home(){
        return "home";
    }
    
    @RequestMapping({"/add","add"})
    public String add(){
        return "addjob";
    }
}
