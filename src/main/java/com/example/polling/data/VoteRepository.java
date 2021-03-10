package com.example.polling.data;

import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.transaction.Transactional;
import java.util.List;

@Repository
@Transactional
public class VoteRepository {
    @PersistenceContext
    EntityManager entityManager;


    public Vote getVote(String idNumber) {
        return entityManager.find(Vote.class,idNumber);
    }

    @Transactional
    public boolean vote(Vote vote){
        if(entityManager.find(Vote.class, vote.getUserId()) != null){
            return false;
        }
        entityManager.persist(vote);
        entityManager.flush();
        return true;
    }

    public long findAllVotes(int alternative){
        TypedQuery<Long> query;
        if(alternative == 1){
            query =  entityManager.createNamedQuery("findAllAlternative1", Long.class);
        }else {
            query =  entityManager.createNamedQuery("findAllAlternative2", Long.class);
        }
        System.out.println(query.getFirstResult());
        return query.getSingleResult();
    }

    @Transactional
    public boolean addVote(Vote vote){
        System.out.println(vote);
        if(entityManager.find(Vote.class, vote.getUserId()) != null){
            return false;
        }
        entityManager.persist(vote);
        entityManager.flush();
        return true;
    }

    @Transactional
    public List<String> retrieveAllVotersIds(){
        TypedQuery<String> query;
        query =  entityManager.createNamedQuery("findAllIds", String.class);
        return query.getResultList();
    }

    public void deleteVotes() {
        entityManager.createNamedQuery("deleteVotes").executeUpdate();

    }
}
