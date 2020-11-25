package demo;

import javax.persistence.Entity;
import javax.persistence.Id;
import java.math.BigDecimal;
import java.util.Date;

@Entity
public class Person {

    @Id
    private String SSN;
    private Date date_of_birth;
    private String first_name;
    private String last_Name;
    private boolean is_awesome;
    private Double awesomeness;
    private BigDecimal wealth;


    public String getsSSN() {
        return SSN;
    }

    public void setsSSN(String sSN) {
        this.SSN = sSN;
    }

    public Date getDateOfBirth() {
        return date_of_birth;
    }

    public void setDateOfBirth(Date dateOfBirth) {
        this.date_of_birth = dateOfBirth;
    }

    public String getFirstName() {
        return first_name;
    }

    public void setFirstName(String firstName) {
        this.first_name = firstName;
    }

    public String getLastName() {
        return last_Name;
    }

    public void setLastName(String lastName) {
        this.last_Name = lastName;
    }

    public boolean isAwesome() {
        return is_awesome;
    }

    public void setAwesome(boolean awesome) {
        is_awesome = awesome;
    }

    public Double getAwesomeness() {
        return awesomeness;
    }

    public void setAwesomeness(Double awesomeness) {
        this.awesomeness = awesomeness;
    }

    public BigDecimal getWealth() {
        return wealth;
    }

    public void setWealth(BigDecimal wealth) {
        this.wealth = wealth;
    }

}