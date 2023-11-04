//
//  OrderButton.swift
//  Appetizers
//
//  Created by Alejandro Sierro Galán on 4/11/23.
//

import SwiftUI

struct OrderButton: View {
    
    let price: Double
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            HStack {
                Text("$\(price, specifier: "%.2f") - Add To Order")
                    .fontWeight(.bold)
            }
            .padding(10)
        }
        .buttonStyle(.borderedProminent)
        .tint(.brandPrimary)
    }
}

#Preview {
    OrderButton(price: 11.40) {
        
    }
}
