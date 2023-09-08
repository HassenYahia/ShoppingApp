//
//  CartView.swift
//  RehobothMarket
//
//  Created by Hassen Abdurahman Yahia on 2023-08-12.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        ScrollView {
            
            if cartManager.paymentSucess {
                Text ("Thank you! for your purchase! Your order will arrive soon. You will also recieve a confirmation email. \n ለግዢዎ እናመሰግናለን! ትእዛዝህ በቅርቡ ይደርሳል። የማረጋገጫ ኢሜይልም ይደርስዎታል።")
                    .padding()
            } else {
            
            if cartManager.products.count > 0 {
                ForEach (cartManager.products, id: \.id) {
                    product in ProductRow(product: product)
                }
                HStack {
                    Text("Your cart total is")
                    Spacer()
                    Text("$\(cartManager.total).00")
                }
                .padding()
                
                PaymentButton(action: cartManager.pay)
                    .padding()
            }else {
                Text("Your cart is empty")
                
            }
            }
            
        }
        .navigationTitle(Text("My Cart"))
        .padding(.top)
        .onDisappear {
            if cartManager.paymentSucess {
                cartManager.paymentSucess = false
            }
        }
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(CartManager())
    }
}
