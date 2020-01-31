package com.board.data;

import com.board.instance.UsersInstance;
import org.springframework.stereotype.Component;


@Component("user")
public class User {
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

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getSecondName() {
        return secondName;
    }

    public void setSecondName(String secondName) {
        this.secondName = secondName;
    }

    public String getDateB() {
        return dateB;
    }

    public void setDateB(String dateB) {
        this.dateB = dateB;
    }

    public String getPassportSeria() {
        return passportSeria;
    }

    public void setPassportSeria(String passportSeria) {
        this.passportSeria = passportSeria;
    }

    public int getPassportNumber() {
        return passportNumber;
    }

    public void setPassportNumber(int passportNumber) {
        this.passportNumber = passportNumber;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }


    public User() {
    }

    public User(int id, String login, String pass, String firstName, String secondName, String dateB, String passportSeria, int passportNumber, String mail, String phone, String type) {
        this.id = id;
        this.login = login;
        this.pass = pass;
        this.firstName = firstName;
        this.secondName = secondName;
        this.dateB = dateB;
        this.passportSeria = passportSeria;
        this.passportNumber = passportNumber;
        this.mail = mail;
        this.phone = phone;
        this.type = type;
    }

    public User(UsersInstance user) {
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


    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", login='" + login + '\'' +
                ", pass='" + pass + '\'' +
                ", firstName='" + firstName + '\'' +
                ", secondName='" + secondName + '\'' +
                ", dateB=" + dateB +
                ", passportSeria='" + passportSeria + '\'' +
                ", passportNumber=" + passportNumber +
                ", mail='" + mail + '\'' +
                ", phone='" + phone + '\'' +
                ", type='" + type + '\'' ;
    }
}
