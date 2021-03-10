package com.example.polling.controllers;

import com.example.polling.data.Question;
import com.example.polling.data.QuestionRepository;
import com.example.polling.data.VoteRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.validation.Valid;

@Controller
public class AdminController {

    @Autowired
    QuestionRepository questionRepository;
    @Autowired
    VoteRepository voteRepository;


    @RequestMapping(value = "/admin", method = RequestMethod.GET)
    public String showAdminPage(){
        return "admin";
    }

    @RequestMapping(value = "/admin/live_results", method = RequestMethod.GET)
    public String showAdminLiveResult(ModelMap model){
        if(questionRepository.getQuestion() == null){
            model.addAttribute("errorMessage", "No question added. Add a question");
            model.addAttribute("go_home_admin", "Go Home");
            return "liveResults";
        }
        model.addAttribute("question",questionRepository.getQuestion().getQuestion());
        model.addAttribute("result1", voteRepository.findAllVotes(1));
        model.addAttribute("result2",voteRepository.findAllVotes(2));
        return "liveResults";
    }
    @RequestMapping(value = "/admin/change_question", method = RequestMethod.GET)
    public String showAddQuestion(ModelMap model){
        if(questionRepository.getQuestion() == null){
            model.addAttribute("question",new Question());
            model.addAttribute("noQuestionMessage", "No question added yet");
        }else {
            model.addAttribute("question", questionRepository.getQuestion());
        }
        return "change_question";
    }

    @RequestMapping(value = "/admin/change_question", method = RequestMethod.POST)
    public String changeQuestion(ModelMap model, @Valid Question question, BindingResult bindingResult){
        if(bindingResult.hasErrors()){
            return "change_question";
        }
        questionRepository.updateQuestion(question);
        voteRepository.deleteVotes();
        return "redirect:/admin";
    }

    @RequestMapping(value = "/admin/list_voters", method = RequestMethod.GET)
    public String listVoters(ModelMap modelMap){
        if(voteRepository.retrieveAllVotersIds().isEmpty()){
            modelMap.addAttribute("errorMessage", "No voters yet!");
            return "voters";
        }
        modelMap.addAttribute("voters", voteRepository.retrieveAllVotersIds());
        return "voters";
    }
}
