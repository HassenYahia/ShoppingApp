//
//  CartManager.swift
//  RehobothMarket
//
//  Created by Hassen Abdurahman Yahia on 2023-08-12.
//

import Foundation

class CartManager: ObservableObject {
    @Published private(set) var products: [Product] = []
    @Published private(set) var total: Int = 0
    
    let paymentHandler = PaymentHandler()
    @Published  var paymentSucess = false
    
    func addToCart(product: Product) {
        products.append(product)
        total += product.price
    }
    
    func removeFromCart(product: Product) {
       products =  products.filter { $0.id != product.id}
        total -= product.price
    }
    
    func pay() {
        paymentHandler.startPayment(products: products, total: total) { success in
            self.paymentSucess = success
            self.products = []
            self.total = 0
        }
    }
}
