package com.example.polling.data;

import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

@Repository
public class AdminRepository{

    @PersistenceContext
    EntityManager entityManager;

    public Admin getAdmin(String id){
        return entityManager.find(Admin.class,id);
    }
    public boolean addAdmin(Admin newAdmin){
        if(entityManager.find(Admin.class, newAdmin.getIdNumber()) != null){
            return false;
        }
        entityManager.persist(newAdmin);
        entityManager.flush();

        return true;
    }
}
