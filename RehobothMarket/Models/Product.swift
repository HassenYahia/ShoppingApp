//
//  Product.swift
//  RehobothMarket
//
//  Created by Hassen Abdurahman Yahia on 2023-08-12.
//

import Foundation


struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var price: Int
}

var productList = [Product(name: "Injera/እንጀራ", image: "injera", price: 7),
                   Product(name: "Berbere/በርበሬ ", image: "berbere", price: 10),
                   Product(name: "Coffee/ቡና", image: "Coffee", price: 18),
                   Product(name: "Lentils/ምስር", image: "lentils", price: 5),
                   Product(name: "Meat/ ስጋ", image: "Meat1", price: 8),
                   Product(name: "Mitmita/ሚጥሚጣ", image: "mitmita", price: 3),
                   Product(name: "Shiro/ሽሮ", image: "shiro", price: 12),
                   Product(name: "Whole Lentils/ድፍን ምስር", image: "whole_lentils", price: 6)]
