package com.elisarovani.BookShop.dao;

import com.elisarovani.BookShop.entity.Customer;
import org.springframework.data.jpa.repository.JpaRepository;


public interface CustomerRepository extends JpaRepository <Customer, Long> {
    Customer findByEmail(String theEmail);


}
