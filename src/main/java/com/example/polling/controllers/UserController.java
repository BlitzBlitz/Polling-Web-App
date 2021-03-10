package com.example.polling.controllers;

import com.example.polling.data.QuestionRepository;
import com.example.polling.data.Vote;
import com.example.polling.data.VoteRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes("userId")
public class UserController {

    @Autowired
    QuestionRepository questionRepository;
    @Autowired
    VoteRepository voteRepository;

    @RequestMapping(value = "/user", method = RequestMethod.GET)
    public String showAdminPage(){
        return "user";
    }

    @RequestMapping(value = "/user/vote", method = RequestMethod.GET)
    public String showVotingPage(ModelMap model){
        if(questionRepository.getQuestion() == null){
            model.addAttribute("errorMessage", "No question added. Contact the support");
            model.addAttribute("go_home_user", "Go Home");
            return "vote";
        }
        model.addAttribute("question", questionRepository.getQuestion().getQuestion());
        model.addAttribute("alternative1", questionRepository.getQuestion().getAlternative1());
        model.addAttribute("alternative2", questionRepository.getQuestion().getAlternative2());
        return "vote";
    }
    @RequestMapping(value = "/user/doVote")
    public String vote(ModelMap model, @RequestParam String vote){
        System.out.println(vote);
        System.out.println((String)model.getAttribute("userId"));
        if(vote.equals("1")){
            if(!voteRepository.addVote(new Vote((String)model.getAttribute("userId"),1))){
               model.addAttribute("errorMessage", "Only one vote allowed!");
               model.addAttribute("go_home", "Go Home");
               return "vote";
            }
        }else {
            if(!voteRepository.addVote(new Vote((String)model.getAttribute("userId"),2))){
                model.addAttribute("errorMessage", "Only one vote allowed!");
                model.addAttribute("go_home", "Go Home");
                return "vote";
            }
        }
        return "redirect:/user";
    }


    @RequestMapping(value = "/user/live_results", method = RequestMethod.GET)
    public String showAdminLiveResult(ModelMap model){
        if(questionRepository.getQuestion() == null){
            model.addAttribute("errorMessage", "No question added. Contact the support");
            model.addAttribute("go_home_user", "Go Home");
            return "liveResults";
        }
        model.addAttribute("question",questionRepository.getQuestion().getQuestion());
        model.addAttribute("result1", voteRepository.findAllVotes(1));
        model.addAttribute("result2",voteRepository.findAllVotes(2));
        return "liveResults";
    }

}
