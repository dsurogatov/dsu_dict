package com.gmail.dsurogatov.dao;

import java.util.List;

import com.gmail.dsurogatov.domain.Word;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class WordDAOImpl implements WordDAO {
	
	@Autowired
    private SessionFactory sessionFactory;
	
	@Override
	public void addWord(Word contact) {
		sessionFactory.getCurrentSession().save(contact);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Word> listWord() {
		return sessionFactory.getCurrentSession().createQuery("from Word")
	            .list();
	}

	@Override
	public void removeWord(Integer id) {
		Word locWord = (Word) sessionFactory.getCurrentSession().load(
				Word.class, id);
        if (null != locWord) {
            sessionFactory.getCurrentSession().delete(locWord);
        }
	}

}
