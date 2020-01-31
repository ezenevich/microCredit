package com.board.instance;

import com.board.data.Order;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "orders", schema = "microzaim")
public class OrdersInstance {
    private int id;
    private int sum;
    private int days;
    private String phone;
    private String operator;
    private String card;
    private String date;
    private String holder;
    private int proc;
    private double paySum;
    private String type;
    private String userLogin;

    @Id
    @Column(name = "id", nullable = false)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "sum", nullable = false)
    public int getSum() {
        return sum;
    }

    public void setSum(int sum) {
        this.sum = sum;
    }

    @Basic
    @Column(name = "days", nullable = false)
    public int getDays() {
        return days;
    }

    public void setDays(int days) {
        this.days = days;
    }

    @Basic
    @Column(name = "phone", nullable = true, length = 15)
    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    @Basic
    @Column(name = "operator", nullable = true, length = 10)
    public String getOperator() {
        return operator;
    }

    public void setOperator(String operator) {
        this.operator = operator;
    }

    @Basic
    @Column(name = "card", nullable = true, length = 17)
    public String getCard() {
        return card;
    }

    public void setCard(String card) {
        this.card = card;
    }

    @Basic
    @Column(name = "date", nullable = true, length = 6)
    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    @Basic
    @Column(name = "holder", nullable = true, length = 50)
    public String getHolder() {
        return holder;
    }

    public void setHolder(String holder) {
        this.holder = holder;
    }

    @Basic
    @Column(name = "proc", nullable = false)
    public int getProc() {
        return proc;
    }

    public void setProc(int proc) {
        this.proc = proc;
    }

    @Basic
    @Column(name = "paySum", nullable = false, precision = 0)
    public double getPaySum() {
        return paySum;
    }

    public void setPaySum(double paySum) {
        this.paySum = paySum;
    }

    @Basic
    @Column(name = "type", nullable = false, length = 25)
    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    @Basic
    @Column(name = "userLogin", nullable = false, length = 50)
    public String getUserLogin() {
        return userLogin;
    }

    public void setUserLogin(String userLogin) {
        this.userLogin = userLogin;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        OrdersInstance that = (OrdersInstance) o;
        return id == that.id &&
                sum == that.sum &&
                days == that.days &&
                proc == that.proc &&
                Double.compare(that.paySum, paySum) == 0 &&
                Objects.equals(phone, that.phone) &&
                Objects.equals(operator, that.operator) &&
                Objects.equals(card, that.card) &&
                Objects.equals(date, that.date) &&
                Objects.equals(holder, that.holder) &&
                Objects.equals(type, that.type);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, sum, days, phone, operator, card, date, holder, proc, paySum, type);
    }

    public OrdersInstance() {
    }

    public OrdersInstance(Order o) {
        this.id = o.getId();
        this.sum = o.getSum();
        this.days = o.getDays();
        this.phone = o.getPhone();
        this.operator = o.getOperator();
        this.card = o.getCard();
        this.date = o.getDate();
        this.holder = o.getHolder();
        this.proc = o.getProc();
        this.paySum = o.getPaySum();
        this.type = o.getType();
        this.userLogin = o.getUserLogin();
    }
}

