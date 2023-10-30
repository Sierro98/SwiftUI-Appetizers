//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Alejandro Sierro Galán on 27/10/23.
//

import SwiftUI

struct AppetizerListView: View {
    
    @StateObject var viewModel = AppetizerListViewModel()
    
    var body: some View {
        NavigationView {
            List($viewModel.appetizers) { appetizer in
                AppetizerItemList(appetizer: appetizer)
            }
            .listStyle(.plain)
            .navigationTitle("Appetizers")
        }
        .onAppear {
            viewModel.getAppetizers()
        }
    }
}

#Preview {
    AppetizerListView()
}
