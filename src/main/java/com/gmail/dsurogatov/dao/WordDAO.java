package com.gmail.dsurogatov.dao;

import java.util.List;

import com.gmail.dsurogatov.domain.Word;

public interface WordDAO {
	 
	public void addWord(Word argWord);
    public List<Word> listWord();
    public void removeWord(Integer id);
}
