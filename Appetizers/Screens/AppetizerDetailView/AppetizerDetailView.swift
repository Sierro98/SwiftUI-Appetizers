//
//  AppetizerDetailView.swift
//  Appetizers
//
//  Created by Alejandro Sierro Galán on 4/11/23.
//

import SwiftUI

struct AppetizerDetailView: View {
    
    let appetizer: Appetizer
    @Binding var isShowingDetail: Bool
    
    var body: some View {
        VStack {
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .frame(height: 238)
                .aspectRatio(contentMode: .fill)
            Text(appetizer.name)
                .font(.title2)
                .fontWeight(.semibold)
            Text(appetizer.description)
                .lineLimit(nil)
                .multilineTextAlignment(.center)
                .padding()
            HStack {
                AppetizerSpecifications(type: "Calories",
                                        specification: "\(appetizer.calories)",
                                        grams: false)
                AppetizerSpecifications(type: "Carbs",
                                        specification: "\(appetizer.carbs)",
                                        grams: true)
                AppetizerSpecifications(type: "Protein",
                                        specification: "\(appetizer.protein)",
                                        grams: true)
            }
            
            OrderButton(price: appetizer.price) {
                
            }
            .padding(.bottom)
        }
        .frame(width: 320, height: 525)
        .background(Color(.systemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .shadow(radius: 40)
        .overlay(
            XCloseButton() {
                isShowingDetail = false
            },
            alignment: .topTrailing)
    }
}

#Preview {
    AppetizerDetailView(appetizer: MockData.sampleAppetizer,
                        isShowingDetail: .constant(true))
        .previewLayout(.sizeThatFits)
}
