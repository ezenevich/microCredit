package com.board.controller;

import javax.servlet.http.HttpServletRequest;

import com.board.instance.OrdersInstance;
import com.board.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

@Controller
public class MainController {

    @Autowired
    @Qualifier(value = "orderService")
    private OrderService orderService;

    private List<OrdersInstance> allOrders;
    private List<OrdersInstance> orders;

    @RequestMapping("/main")
    public ModelAndView main(HttpServletRequest req) {
        ModelAndView model = new ModelAndView("main");

        allOrders = orderService.getOrders();
        orders = new ArrayList<OrdersInstance>();

        for (OrdersInstance o : allOrders) {
            if (o.getType().equals("активный")) {
                orders.add(o);
            }
        }

        for (OrdersInstance o : orders) {
            if (o.getDays() == 0) {
                o.setType("просрочен");
                o.setPaySum(o.getPaySum()+ o.getPaySum()*0.2);
                orderService.updateOrder(o);
            }
            else {
                o.setDays(o.getDays() - 1);
                orderService.updateOrder(o);
            }
        }
        return model;
    }
}
