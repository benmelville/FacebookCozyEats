//
//  Food.swift
//  FacebookCozyEats
//
//  Created by Benjamin Melville on 9/27/23.
//

import SwiftUI

struct Food {
    var id: UUID = UUID()
    var name: String = ""
    var image: String = ""
    var timeUntilReady: Int = 0
    var price: Int = 0
}

struct FoodItems {
    var foodItems = [
        // American
        Food(id: UUID(), name: "burger", image: "burger", timeUntilReady: 25, price: 15),
        Food(id: UUID(), name: "Chicken Tenders", image: "chicken-tenders", timeUntilReady: 19, price: 9),
        Food(id: UUID(), name: "Chili Dog", image: "chili-dog", timeUntilReady: 5, price: 7),
//        Food(id: UUID(), name: "burger", image: "burger", timeUntilReady: 25, price: 15),
//        Food(id: UUID(), name: "burger", image: "burger", timeUntilReady: 25, price: 15),
//        Food(id: UUID(), name: "burger", image: "burger", timeUntilReady: 25, price: 15),
//        Food(id: UUID(), name: "burger", image: "burger", timeUntilReady: 25, price: 15),
//        Food(id: UUID(), name: "burger", image: "burger", timeUntilReady: 25, price: 15),
//        Food(id: UUID(), name: "burger", image: "burger", timeUntilReady: 25, price: 15)
        
        // Chinese
        Food(id: UUID(), name: "Chow Siu Pork", image: "chow-siu-pork", timeUntilReady: 17, price: 23),
        Food(id: UUID(), name: "Orange Chicken", image: "orange-chicken", timeUntilReady: 13, price: 17),
        Food(id: UUID(), name: "Peking Duck", image: "peking-duck", timeUntilReady: 21, price: 13),
//        
//        // Mexican
        Food(id: UUID(), name: "Burritos", image: "burrito", timeUntilReady: 3, price: 11),
        Food(id: UUID(), name: "Chicken Fajitas", image: "fajitas", timeUntilReady: 13, price: 18),
        Food(id: UUID(), name: "Lamb Tacos", image: "lamb-tacos", timeUntilReady: 22, price: 16)
        
        
        

    
    
    ]
    
}
