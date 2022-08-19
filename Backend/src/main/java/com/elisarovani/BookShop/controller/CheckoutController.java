package com.elisarovani.BookShop.controller;


import com.elisarovani.BookShop.dto.Purchase;
import com.elisarovani.BookShop.dto.PurchaseResponse;
import com.elisarovani.BookShop.service.CheckoutService;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/checkout")
public class CheckoutController {

    private CheckoutService CheckoutService;

    public CheckoutController(CheckoutService checkoutService){
        this.CheckoutService = checkoutService;
    }

    @PostMapping("/purchase")
    public PurchaseResponse placeOrder(@RequestBody Purchase purchase){

        PurchaseResponse purchaseResponse = CheckoutService.placeOrder(purchase);

        return purchaseResponse;
    }

}
