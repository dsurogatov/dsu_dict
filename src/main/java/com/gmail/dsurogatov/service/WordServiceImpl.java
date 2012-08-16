package com.gmail.dsurogatov.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gmail.dsurogatov.dao.WordDAO;
import com.gmail.dsurogatov.domain.Word;

@Service
public class WordServiceImpl implements WordService {

	private static final Logger logger = LoggerFactory.getLogger(WordService.class);
	
	@Autowired
	private WordDAO wordDAO;

	@Transactional
	@Override
	public void addWord(Word argWord) {
		logger.info(argWord.getValue());
		wordDAO.addWord(argWord);
	}

	@Transactional
	@Override
	public List<Word> listWord() {
		return wordDAO.listWord();
	}

	@Transactional
	@Override
	public void removeWord(Integer id) {
		wordDAO.removeWord(id);
	}

}
