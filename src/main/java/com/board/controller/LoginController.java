package com.board.controller;


import com.board.data.User;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import com.board.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {

    @Autowired
    @Qualifier(value = "userService")
    private UserService userService;

    @Autowired
    @Qualifier(value = "user")
    private User user;

    @RequestMapping("/login")
    public ModelAndView login(HttpServletRequest req) {

        if (req.getParameter("login") == null) {
            ModelAndView model = new ModelAndView("login");
            return model;
        } else {
            ModelAndView model = new ModelAndView("info");
            String login = req.getParameter("login");
            String pass = req.getParameter("pass");

            try {
                user = new User(userService.getUserByLogin(login));
                System.out.println(user.getLogin());
            } catch (NullPointerException e) {
                model.addObject("info", "Неверное имя пользователя");
            }
            if (user == null) {
                model.addObject("info", "Неверное имя пользователя");
            } else {
                if (user.getPass().equals(pass)) {
                    HttpSession s = req.getSession();
                    s.setAttribute("user", user);
                    model.addObject("info", "Авторизация прошла успешно");
                } else {
                    model.addObject("info", "Неверный пароль");
                }
            }
            return model;
        }
    }
}
