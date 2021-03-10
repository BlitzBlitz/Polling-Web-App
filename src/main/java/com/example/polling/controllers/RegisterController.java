package com.example.polling.controllers;

import com.example.polling.data.Admin;
import com.example.polling.data.User;
import com.example.polling.service.RegisterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.validation.Valid;

@Controller
public class RegisterController {
    @Autowired
    RegisterService registerService;


    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String showRegisterPage(ModelMap model){
        model.addAttribute(new User());
        return "register";
    }

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String registerAdmin(ModelMap model, @RequestParam String confirmed_password, @RequestParam String company_code,
                                @Valid User user, BindingResult result){
        if(result.hasErrors()){
            model.addAttribute(user);
            return "register";
        }
        if(!user.getPassword().equals(confirmed_password)){
            model.put("errorMessage", "*Passwords don`t match");
            return "register";
        }
        if(user.getIsAdmin() != null && company_code != null && !company_code.equals(Admin.companyCode)){
            model.put("errorMessage", "*Company code not correct");
            return "register";
        }
        if(!registerService.registerUser(user)){
            model.addAttribute("errorMessage", "This Id already exists");
            return "register";
        }
        return "redirect:/";
    }

}
