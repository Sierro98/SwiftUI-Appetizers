//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Alejandro Sierro Galán on 27/10/23.
//

import SwiftUI

struct AppetizerListView: View {
    
    @State var Appetizers = MockData.sampleAppetizers
    
    var body: some View {
        NavigationView {
            List($Appetizers) { appetizer in
                AppetizerItemList(appetizer: appetizer)
            }
            .listStyle(.plain)
            .navigationTitle("Appetizers")
        }
    }
}

#Preview {
    AppetizerListView()
}
