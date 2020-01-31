package com.board.controller;

import com.board.data.Order;
import com.board.data.User;
import com.board.instance.OrdersInstance;
import com.board.service.OrderService;
import com.board.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class CreateCreditController {

    @Autowired
    @Qualifier(value = "orderService")
    private OrderService orderService;

    @Autowired
    @Qualifier(value = "user")
    private User user;

    @Autowired
    @Qualifier(value = "order")
    private Order order;

    @RequestMapping("/createCredit")
    public ModelAndView main(HttpServletRequest req) {
        ModelAndView model = new ModelAndView("createCredit");
        if(req.getParameter("sum") != null){
            HttpSession session = req.getSession();
            user = (User) session.getAttribute("user");


            order.setSum( Integer.parseInt(req.getParameter("sum")));
            order.setDays( Integer.parseInt(req.getParameter("days")));
            order.setPhone( req.getParameter("phone"));
            order.setOperator( req.getParameter("operator"));
            order.setCard( req.getParameter("card"));
            order.setDate( req.getParameter("date"));
            order.setHolder( req.getParameter("holder"));
            order.setProc( Integer.parseInt(req.getParameter("procent")));
            order.setPaySum( Double.parseDouble(req.getParameter("paySum")));
            order.setType("активный");
            order.setUserLogin(user.getLogin());


            OrdersInstance ordersInstance = new OrdersInstance(order);
            orderService.addOrder(ordersInstance);


            model = new ModelAndView("info");
            model.addObject("info", "Займ успешно оформлен.");
        }
        return model;
    }
}
