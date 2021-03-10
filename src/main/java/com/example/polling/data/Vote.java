package com.example.polling.data;

import javax.persistence.*;

@Entity
@NamedQueries( {
        @NamedQuery(name="findAllAlternative1", query="SELECT count(v) FROM Vote v where v.alternativeChosen = 1"),
        @NamedQuery(name="findAllAlternative2", query="SELECT count(v) FROM Vote v where v.alternativeChosen = 2"),
        @NamedQuery(name="findAllIds", query="SELECT v.userId FROM Vote v"),
        @NamedQuery(name = "deleteVotes", query = "delete from Vote")
})
public class Vote {
    @Id
    private String userId;
    private int alternativeChosen;


    public Vote() {
    }

    public Vote(String userId, int alternativeChosen) {
        this.userId = userId;
        this.alternativeChosen = alternativeChosen;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public int getAlternativeChosen() {
        return alternativeChosen;
    }

    public void setAlternativeChosen(int alternativeChosen) {
        this.alternativeChosen = alternativeChosen;
    }

    @Override
    public String toString() {
        return "Vote{" +
                "userId='" + userId + '\'' +
                ", alternativeChosen=" + alternativeChosen +
                '}';
    }
}
