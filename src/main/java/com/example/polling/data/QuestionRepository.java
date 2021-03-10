package com.example.polling.data;

import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

@Repository
@Transactional
public class QuestionRepository {
    @PersistenceContext
    EntityManager entityManager;

    public Question getQuestion(){
        return entityManager.find(Question.class, 1);
    }
    public boolean updateQuestion(Question question){
        entityManager.merge(question);
        return true;
    }
}
