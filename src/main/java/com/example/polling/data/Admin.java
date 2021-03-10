package com.example.polling.data;


import javax.persistence.Entity;
import javax.persistence.Id;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;
import java.util.Objects;

@Entity
public class Admin {
    public static final String companyCode = "AXB";             //hardcoded!

    @Id
    @Pattern(regexp = "[A-Z]{2}[0-9]{8}", message = "Wrong Id format: AB12345678")
    private String idNumber;
    @Size(min = 10, message = "Password less then 10 characters!")
    private String password;



    public Admin() {
    }

    public Admin(String idNumber, String password) {
        this.idNumber = idNumber;
        this.password = password;
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

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Admin admin = (Admin) o;
        return idNumber.equals(admin.idNumber);
    }

    @Override
    public int hashCode() {
        return Objects.hash(idNumber);
    }

    @Override
    public String toString() {
        return "Admin{" +
                "idNumber='" + idNumber + '\'' +
                ", password='" + password + '\'' +
                '}';
    }
}
