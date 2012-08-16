package com.gmail.dsurogatov.service;

import java.util.List;

import com.gmail.dsurogatov.domain.Word;

public interface WordService {

	public void addWord(Word argWord);
    public List<Word> listWord();
    public void removeWord(Integer id);
}
