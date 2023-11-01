//
//  AppetizerItemList.swift
//  Appetizers
//
//  Created by Alejandro Sierro Galán on 29/10/23.
//

import SwiftUI

struct AppetizerItemList: View {
    
    @Binding var appetizer: Appetizer
    
    var body: some View {
        HStack {
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .aspectRatio(contentMode: .fill)
                .frame(width: 150, height: 120)
                .cornerRadius(20)
                .padding()
            VStack(alignment: .leading, spacing: 6) {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                HStack(spacing: 1) {
                    Image(systemName: "dollarsign")
                    Text("\(appetizer.price, specifier: "%.2f")")
                }
                .fontWeight(.semibold)
                .foregroundColor(.secondary)
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    AppetizerItemList(appetizer: .constant(MockData.sampleAppetizer))
}
