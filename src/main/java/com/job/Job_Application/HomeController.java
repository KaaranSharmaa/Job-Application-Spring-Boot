package com.job.Job_Application;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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
    public String handleForm(JobPost jobPost, BindingResult result, Model model) {
        if (result.hasErrors()) return "addjobs";
        jobPosts.add(jobPost);
        model.addAttribute("jobPost", jobPost);
        return "success";
        // ISME OBJJECT MAI DATA JO HAI VO PASS K RHE HAI THN HTML ME PRINT KRTE HAI 
    }

    @GetMapping("/viewalljobs")
    public String viewAllJobs(Model model) {
        model.addAttribute("jobPosts", jobPosts);
        return "viewalljobs";
    }
}
