package com.example.polling.controllers;

import com.example.polling.data.Admin;
import com.example.polling.data.User;
import com.example.polling.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.validation.Valid;

@Controller
@SessionAttributes("userId")
public class LoginController {

    @Autowired
    LoginService loginService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String showWelcomePage(ModelMap model){
        model.remove("userId");
        model.addAttribute(new User());
        return "welcome";
    }

    @RequestMapping(value = "/", method = RequestMethod.POST)
    public String login(ModelMap model, @Valid User user, BindingResult result){
        if(result.hasErrors()){
            return "welcome";
        }
        int validation = 0;
        if(user.getIsAdmin() != null){
            validation = loginService.validateAdmin(new Admin(user.getIdNumber(), user.getPassword()));
            if(validation == 2){                //passed 2 tests
                return "redirect:/admin";
            }
        }else if(user.getIsAdmin() == null){
            validation = loginService.validateUser(user);
            if(validation == 2){
                return "redirect:/user";
            }
        }
        if(validation == 0){
            model.put("errorMessage", "Id not registered");
        }else if(validation == 1){
            model.put("errorMessage", "Wrong password");
        }
        model.addAttribute("userId",user.getIdNumber());
        return "welcome";
    }

}
