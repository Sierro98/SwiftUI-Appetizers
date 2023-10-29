//
//  Appetizer.swift
//  Appetizers
//
//  Created by Alejandro Sierro Galán on 28/10/23.
//

import Foundation

struct Appetizer: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}

struct MockData {
    static let sampleAppetizer = Appetizer(id: 1,
                                           name: "Asian Flank Steak",
                                           description: "Delicious asian flank steak, for the test data, haha so delicious, yum!",
                                           price: 10.20,
                                           imageURL: "https://seanallen-course-backend.herokuapp.com/images/appetizers/buffalo-chicken-bites.jpg",
                                           calories: 90,
                                           protein: 12,
                                           carbs: 22)
    
    static let sampleAppetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
}
