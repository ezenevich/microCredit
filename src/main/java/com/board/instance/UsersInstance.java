package com.board.instance;

import com.board.data.User;
import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "users", schema = "microzaim")
public class UsersInstance {
    private int id;
    private String login;
    private String pass;
    private String firstName;
    private String secondName;
    private String dateB;
    private String passportSeria;
    private int passportNumber;
    private String mail;
    private String phone;
    private String type;


    @Id
    @Column(name = "id", nullable = false)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "login", nullable = false, length = 35)
    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    @Basic
    @Column(name = "pass", nullable = false, length = 35)
    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    @Basic
    @Column(name = "firstName", nullable = false, length = 35)
    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    @Basic
    @Column(name = "secondName", nullable = true, length = 35)
    public String getSecondName() {
        return secondName;
    }

    public void setSecondName(String secondName) {
        this.secondName = secondName;
    }

    @Basic
    @Column(name = "dateB", nullable = false, length = 25)
    public String getDateB() {
        return dateB;
    }

    public void setDateB(String dateB) {
        this.dateB = dateB;
    }

    @Basic
    @Column(name = "passportSeria", nullable = false, length = 5)
    public String getPassportSeria() {
        return passportSeria;
    }

    public void setPassportSeria(String passportSeria) {
        this.passportSeria = passportSeria;
    }

    @Basic
    @Column(name = "passportNumber", nullable = false)
    public int getPassportNumber() {
        return passportNumber;
    }

    public void setPassportNumber(int passportNumber) {
        this.passportNumber = passportNumber;
    }

    @Basic
    @Column(name = "mail", nullable = false, length = 35)
    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    @Basic
    @Column(name = "phone", nullable = false, length = 15)
    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    @Basic
    @Column(name = "type", nullable = true, length = 15)
    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }



    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        UsersInstance that = (UsersInstance) o;
        return id == that.id &&
                passportNumber == that.passportNumber &&
                Objects.equals(login, that.login) &&
                Objects.equals(pass, that.pass) &&
                Objects.equals(firstName, that.firstName) &&
                Objects.equals(secondName, that.secondName) &&
                Objects.equals(dateB, that.dateB) &&
                Objects.equals(passportSeria, that.passportSeria) &&
                Objects.equals(mail, that.mail) &&
                Objects.equals(phone, that.phone) &&
                Objects.equals(type, that.type);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, login, pass, firstName, secondName, dateB, passportSeria, passportNumber, mail, phone, type);
    }

    public UsersInstance() {
    }

    public UsersInstance(User user) {
        this.id = user.getId();
        this.login = user.getLogin();
        this.pass = user.getPass();
        this.firstName = user.getFirstName();
        this.secondName = user.getSecondName();
        this.dateB = user.getDateB();
        this.passportSeria = user.getPassportSeria();
        this.passportNumber = user.getPassportNumber();
        this.mail = user.getMail();
        this.phone = user.getPhone();
        this.type = user.getType();
    }
}
