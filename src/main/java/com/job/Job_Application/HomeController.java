package com.job.Job_Application;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
public class HomeController {

    private final List<JobPost> jobPosts = new ArrayList<>();

    @RequestMapping("/")
    public String root() {
        return "redirect:/home";
    }

    @GetMapping("/home")
    public String home() {
        return "home";
    }

    @GetMapping({"/add", "/addjob"})
    public String add() {
        return "addjobs";
    }

    @PostMapping("/handleForm")
    public String handleForm(JobPost jobPost, Model model) {
        jobPosts.add(jobPost);
        model.addAttribute("jobPost", jobPost);
        return "success";
    }

    @GetMapping("/viewalljobs")
    public String viewAllJobs(Model model) {
        model.addAttribute("jobPosts", jobPosts);
        return "viewalljobs";
    }
}
