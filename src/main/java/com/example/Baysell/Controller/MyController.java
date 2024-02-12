package com.example.Baysell.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MyController {
    @Autowired
    private AuthenticationManager authenticationManager;

    @GetMapping("/myPage")
    public String myPage(Model model){
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        boolean isAuthenticated = authentication != null && authentication .isAuthenticated();
        model.addAttribute("isAuthenticated", isAuthenticated);
        return  "myPage";

    }
}
