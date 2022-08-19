package com.elisarovani.BookShop.dto;

import com.elisarovani.BookShop.entity.Address;
import com.elisarovani.BookShop.entity.Customer;
import com.elisarovani.BookShop.entity.Order;
import com.elisarovani.BookShop.entity.OrderItem;
import lombok.Data;

import java.util.Set;

@Data
public class Purchase {

    private Customer customer;
    private Address shippingAddress;
    private Address billingAddress;
    private Order order;
    private Set<OrderItem> orderItems;


}
