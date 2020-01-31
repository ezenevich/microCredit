package com.board.service.impl;

import com.board.dao.OrderDAO;
import com.board.instance.OrdersInstance;
import com.board.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;



@Service("orderService")
public class OrderServiceImpl implements OrderService {

    private OrderDAO dao;

    @Autowired
    public void setOrderService(OrderDAO dao) {
        this.dao = dao;
    }

    public List<OrdersInstance> getOrders() {
        return dao.getOrders();
    }

    public OrdersInstance getOrderById(int id) {
        return dao.getOrderById(id);
    }

    public void addOrder(OrdersInstance instance) {
        dao.addOrder(instance);
    }

    public void updateOrder(OrdersInstance instance) {
        dao.updateOrder(instance);
    }

    public void deleteOrder(OrdersInstance instance) {
        dao.deleteOrder(instance);
    }


}
