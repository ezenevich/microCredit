package com.board.dao.impl;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.board.dao.UserDAO;
import com.board.instance.UsersInstance;
import java.util.List;

@Repository
@Transactional
public class UserDAOImlp implements UserDAO {

    private static final Logger logger = Logger.getLogger(UserDAO.class);

    @Autowired
    private HibernateTemplate template;


    public List<UsersInstance> getUsers() {
        logger.info("Get all users from db");
        return template.loadAll(UsersInstance.class);
    }

    public UsersInstance getUserByLogin(String login) {
        logger.info("User with login" + login + " was getted from db");
        List<UsersInstance> r = (List<UsersInstance>) template.find("from UsersInstance u where u.login = ?", login);
        if ( r.isEmpty() ) {
            return null;
        }
        return ( UsersInstance ) r.get( 0 );
    }

    public void addUser(UsersInstance user) {
        template.save(user);
        logger.info("Add new user with login " + user.getLogin());
    }

    public void updateUser(UsersInstance user) {
        template.update(user);
        logger.info("Update user with login " + user.getLogin());
    }

    public void deleteUser(UsersInstance user){
        template.delete(user);
        logger.info("Delete user with login " + user.getLogin());
    }
}
