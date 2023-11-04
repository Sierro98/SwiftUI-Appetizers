//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Alejandro Sierro Galán on 27/10/23.
//

import SwiftUI

struct AppetizerListView: View {
    
    @StateObject var viewModel = AppetizerListViewModel()
    @State var isSwhowingDetail: Bool = false
    @State var selectedAppetizer: Appetizer? = nil
    
    var body: some View {
        NavigationView {
            ZStack {
                if viewModel.isLoading {
                    List(MockData.sampleAppetizers) { appetizer in
                        AppetizerSkeleton()
                    }
                    .listStyle(.plain)
                }
                
                if isSwhowingDetail {
                    AppetizerDetailView(appetizer: selectedAppetizer!,
                                        isShowingDetail: $isSwhowingDetail)
                }
                
                List($viewModel.appetizers) { appetizer in
                    AppetizerItemList(appetizer: appetizer)
                        .onTapGesture {
                            //selectedAppetizer = appetizer
                            isSwhowingDetail = true
                        }
                }
                .listStyle(.plain)
                .navigationTitle("Appetizers")
                .disabled(isSwhowingDetail)
            }
        }
        .onAppear {
            viewModel.getAppetizers()
        }
        .blur(radius: isSwhowingDetail ? 20 : 0)
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
