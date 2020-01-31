package com.board.service.impl;

import com.board.dao.UserDAO;;
import com.board.instance.UsersInstance;
import com.board.service.UserService;
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;
import java.util.List;


@Service("userService")
public class UserServiceImpl implements UserService {


    private UserDAO udao;

    @Autowired
    public void setUserService(UserDAO udao) {
        this.udao = udao;
    }

    public List<UsersInstance> getUsers() {
        return udao.getUsers();
    }

    public UsersInstance getUserByLogin(String login) {
        return udao.getUserByLogin(login);
    }

    public void addUser(UsersInstance u) {
        udao.addUser(u);
    }

    public void updateUser(UsersInstance user) {
        udao.updateUser(user);
    }

    public void deleteUser(UsersInstance user) {
        udao.deleteUser(user);
    }


}
