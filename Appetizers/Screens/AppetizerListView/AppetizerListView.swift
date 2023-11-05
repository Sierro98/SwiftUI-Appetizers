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
            ZStack {
                if viewModel.isLoading {
                    List(MockData.sampleAppetizers) { appetizer in
                        AppetizerSkeleton()
                    }
                    .listStyle(.plain)
                }
                
                List(viewModel.appetizers) { appetizer in
                    AppetizerItemList(appetizer: appetizer)
                        .onTapGesture {
                            viewModel.selectedAppetizer = appetizer
                            viewModel.isSwhowingDetail = true
                        }
                }
                .listStyle(.plain)
                .navigationTitle("Appetizers")
                .disabled(viewModel.isSwhowingDetail)
                .blur(radius: viewModel.isSwhowingDetail ? 20 : 0)
                
                if viewModel.isSwhowingDetail {
                    AppetizerDetailView(appetizer: viewModel.selectedAppetizer!,
                                        isShowingDetail: $viewModel.isSwhowingDetail)
                }
            }
        }
        .onAppear {
            viewModel.getAppetizers()
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title,
                  message: alertItem.message,
                  dismissButton: alertItem.dismissButton)
        }
    }
}

#Preview {
    AppetizerListView()
}
