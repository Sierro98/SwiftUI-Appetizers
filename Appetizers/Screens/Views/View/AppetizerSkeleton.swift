//
//  AppetizerItemList.swift
//  Appetizers
//
//  Created by Alejandro Sierro Galán on 29/10/23.
//

import SwiftUI

struct AppetizerSkeleton: View {
    
    var body: some View {
        HStack {
            ProgressView()
                .controlSize(.large)
                .frame(width: 150, height: 120)
                .cornerRadius(20)
                .padding()
            VStack(alignment: .leading, spacing: 6) {
                Text(MockData.sampleAppetizer.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                HStack(spacing: 1) {
                    Image(systemName: "dollarsign")
                    Text("\(MockData.sampleAppetizer.price, specifier: "%.2f")")
                }
                .fontWeight(.semibold)
                .foregroundColor(.secondary)
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .redacted(reason: .placeholder)
    }
}

#Preview {
    AppetizerSkeleton()
}
