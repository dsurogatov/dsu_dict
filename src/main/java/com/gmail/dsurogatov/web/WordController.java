package com.gmail.dsurogatov.web;

import java.util.Map;

import com.gmail.dsurogatov.domain.Word;
import com.gmail.dsurogatov.service.WordService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class WordController {

    @Autowired
    private WordService wordService;

    @RequestMapping("/index")
    public String listWords(Map<String, Object> map) {

        map.put("word", new Word());
        map.put("wordList", wordService.listWord());

        return "word";
    }
    
    @RequestMapping("/")
    public String home() {
        return "redirect:/index";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String addWord(@ModelAttribute("word") Word word,
            BindingResult result) {

        wordService.addWord(word);

        return "redirect:/index";
    }

    @RequestMapping("/delete/{wordId}")
    public String deleteWord(@PathVariable("wordId") Integer wordId) {

        wordService.removeWord(wordId);

        return "redirect:/index";
    }
}