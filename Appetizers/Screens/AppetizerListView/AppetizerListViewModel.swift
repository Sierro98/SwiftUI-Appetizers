//
//  AppetizerListViewModel.swift
//  Appetizers
//
//  Created by Alejandro Sierro Galán on 30/10/23.
//

import Foundation

final class AppetizerListViewModel: ObservableObject {
    
    @Published var appetizers: [Appetizer] = []
    @Published var alertItem: AlertItem?
    @Published var isLoading: Bool = false
    @Published var isSwhowingDetail: Bool = false
    @Published var selectedAppetizer: Appetizer? = nil
    
    func getAppetizers() {
        isLoading = true
        NetworkManager.shared.getAppetizers { result in
            DispatchQueue.main.async { [self] in
                switch result {
                case .success(let appetizers):
                    self.appetizers = appetizers
                    isLoading = false
                case .failure(let error):
                    switch error {
                    case .invalidURL:
                        alertItem = AlertContext.invalidURL
                    case .invalidResponse:
                        alertItem = AlertContext.invalidResponse
                    case .invalidData:
                        alertItem = AlertContext.invalidData
                    case .unable2Complete:
                        alertItem = AlertContext.unable2Complete
                    }
                }
            }
        }
    }
}
