package com.elisarovani.BookShop.service;


import com.elisarovani.BookShop.dto.Purchase;
import com.elisarovani.BookShop.dto.PurchaseResponse;

public interface CheckoutService {

    PurchaseResponse placeOrder(Purchase purchase);
}
