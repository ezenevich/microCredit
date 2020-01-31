package com.board.controller;

import com.board.data.User;
import com.board.instance.OrdersInstance;
import com.board.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@Controller
public class AllCreditController {

    @Autowired
    @Qualifier(value = "orderService")
    private OrderService orderService;

    @Autowired
    @Qualifier(value = "user")
    private User user;


    private List<OrdersInstance> allOrders;
    private List<OrdersInstance> userOrders;

    @RequestMapping("/allCredit")
    public ModelAndView main(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        resp.setCharacterEncoding("UTF-8");
        req.setCharacterEncoding("UTF-8");
        HttpSession session = req.getSession();
        user = (User) session.getAttribute("user");
        ModelAndView model = new ModelAndView("allCredit");

        allOrders = orderService.getOrders();
        userOrders = new ArrayList<OrdersInstance>();

        for (OrdersInstance o : allOrders) {
            if (o.getUserLogin().equals(user.getLogin())) {
                userOrders.add(o);
            }
        }

        model.addObject("orders", userOrders);

        return model;
    }
}
