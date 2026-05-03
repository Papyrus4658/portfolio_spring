package com.example.portfolio.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.example.portfolio.model.Work;
import com.example.portfolio.repository.WorkRepository;

@Controller
public class IndexController {
    @Autowired
    private WorkRepository workRepository;

    @GetMapping("/")
    public String getIndex(Model model) {
        List<Work> works = workRepository.findAll();
        model.addAttribute("works", works);

        return "index";
    }
}
