package com.board.service;

import com.board.instance.UsersInstance;
import java.util.List;


public interface UserService {

    List<UsersInstance> getUsers();

    UsersInstance getUserByLogin(String login);

    void addUser(UsersInstance user);

    void updateUser(UsersInstance user);

    void deleteUser(UsersInstance user);
}
