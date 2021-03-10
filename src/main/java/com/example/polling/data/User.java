package com.example.polling.data;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;
import java.util.Objects;

@Entity
public class User {

    @Id
    @Pattern(regexp = "[A-Z]{2}[0-9]{8}", message = "Wrong Id format: AB12345678")
    private String idNumber;
    @Size(min = 10, message = "Password less then 10 characters!")
    private String password;
    private String email;
    private String isAdmin;

    public User() {
    }

    public User(String idNumber, String password, String email, String isAdmin) {
        this.idNumber = idNumber;
        this.password = password;
        this.email = email;
        this.isAdmin = isAdmin;
    }

    public String getIdNumber() {
        return idNumber;
    }

    public void setIdNumber(String idNumber) {
        this.idNumber = idNumber;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getIsAdmin() {
        return isAdmin;
    }

    public void setIsAdmin(String isAdmin) {
        this.isAdmin = isAdmin;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        User user = (User) o;
        return idNumber.equals(user.idNumber);
    }

    @Override
    public int hashCode() {
        return Objects.hash(idNumber);
    }
}
