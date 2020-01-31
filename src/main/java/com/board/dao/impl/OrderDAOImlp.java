package com.board.dao.impl;

import com.board.dao.OrderDAO;
import com.board.instance.OrdersInstance;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import java.util.List;

@Repository
@Transactional
public class OrderDAOImlp implements OrderDAO {

    private static final Logger logger = Logger.getLogger(OrderDAO.class);

    @Autowired
    private HibernateTemplate template;


    public List<OrdersInstance> getOrders() {
        logger.info("Get all orders from db");
        return template.loadAll(OrdersInstance.class);
    }

    public OrdersInstance getOrderById(int id) {
        logger.info("Order with id " + id + " was getted from db");
        List<OrdersInstance> r = (List<OrdersInstance>) template.find("from OrdersInstance u where u.id = ?", id);
        if ( r.isEmpty() ) {
            return null;
        }
        return ( OrdersInstance ) r.get( 0 );
    }

    public void addOrder(OrdersInstance instance) {
        template.save(instance);
        logger.info("Add new order with id " + instance.getId());
    }

    public void updateOrder(OrdersInstance instance) {
        template.update(instance);
        logger.info("Update order with id " + instance.getId());
    }

    public void deleteOrder(OrdersInstance instance){
        template.delete(instance);
        logger.info("Delete order with id " + instance.getId());
    }
}
