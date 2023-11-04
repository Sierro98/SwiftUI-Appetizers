//
//  AppetizerSpecifications.swift
//  Appetizers
//
//  Created by Alejandro Sierro Galán on 4/11/23.
//

import SwiftUI

struct AppetizerSpecifications: View {
    
    let type: String
    let specification: String
    let grams: Bool
    
    var body: some View {
        VStack(spacing: 5) {
            Text(type)
                .fontWeight(.bold)
            Text(grams ? "\(specification) g" : "\(specification)")
                .fontWeight(.semibold)
                .foregroundStyle(.secondary)
        }
        .padding()
    }
}

#Preview {
    AppetizerSpecifications(type: "Carbs", specification: "23", grams: true)
}
