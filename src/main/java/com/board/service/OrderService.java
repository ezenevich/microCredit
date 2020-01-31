package com.board.service;

import com.board.instance.OrdersInstance;
import java.util.List;


public interface OrderService {
    List<OrdersInstance> getOrders();

    OrdersInstance getOrderById(int id);

    void addOrder(OrdersInstance instance);

    void updateOrder(OrdersInstance instance);

    void deleteOrder(OrdersInstance instance);
}
