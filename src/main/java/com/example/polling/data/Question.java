package com.example.polling.data;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.validation.constraints.Size;

@Entity
public class Question {
    @Id
    private int id;

    @Size(min=15, message = "Should be more than 15 letters")
    private String question;
    private String alternative1;
    private String alternative2;

    public Question() {
        id = 1;
    }

    public Question(String question, String alternative1, String alternative2) {
        id=1;
        this.question = question;
        this.alternative1 = alternative1;
        this.alternative2 = alternative2;
    }

    public int getId() {
        return id;
    }

    public String getQuestion() {
        return question;
    }

    public void setQuestion(String question) {
        this.question = question;
    }

    public String getAlternative1() {
        return alternative1;
    }

    public void setAlternative1(String alternative1) {
        this.alternative1 = alternative1;
    }

    public String getAlternative2() {
        return alternative2;
    }

    public void setAlternative2(String alternative2) {
        this.alternative2 = alternative2;
    }

    @Override
    public String toString() {
        return "Question{" +
                "id=" + id +
                ", question='" + question + '\'' +
                ", alternative1='" + alternative1 + '\'' +
                ", alternative2='" + alternative2 + '\'' +
                '}';
    }
}
