package com.board.controller;

import javax.servlet.http.HttpServletRequest;
import com.board.data.User;
import com.board.instance.UsersInstance;
import com.board.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class RegisterController {

    @Autowired
    @Qualifier(value = "userService")
    private UserService userService;

    @Autowired
    @Qualifier(value = "user")
    private User user;

    @RequestMapping("/reg")
    public ModelAndView register(HttpServletRequest req) {
        String login = req.getParameter("login");
        ModelAndView model = new ModelAndView("reg");

        if(login == null){
            return model;
        }

        if (userService.getUserByLogin(login) == null) {

            user.setLogin(req.getParameter("login"));
            user.setPass(req.getParameter("pass"));
            user.setFirstName(req.getParameter("firstName"));
            user.setSecondName(req.getParameter("name"));
            user.setPassportSeria(req.getParameter("passportSerial"));
            user.setPassportNumber(Integer.parseInt(req.getParameter("passportNumb")));
            user.setDateB(req.getParameter("date"));
            user.setMail(req.getParameter("email"));
            user.setPhone(req.getParameter("phone"));
            user.setType("non-confirm");


            UsersInstance usersInstance = new UsersInstance(user);
            userService.addUser(usersInstance);


            model = new ModelAndView("infoReg");
            model.addObject("info", "Регистрация прошла успешна!");
        } else {
            model = new ModelAndView("infoReg");
            model.addObject("info", "Пользоватил с таким именем уже есть.");
        }
        return model;
    }

}
