package com.example.polling.data;

import org.springframework.stereotype.Repository;


import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

@Repository
@Transactional
public class UserRepository {
    @PersistenceContext
    EntityManager entityManager;


    public User getUser(String idNumber) {
        return entityManager.find(User.class,idNumber);
    }

    @Transactional
    public boolean addUser(User user){
        if(entityManager.find(User.class, user.getIdNumber()) != null){
            return false;
        }
        entityManager.persist(user);
        entityManager.flush();
        return true;
    }
}
