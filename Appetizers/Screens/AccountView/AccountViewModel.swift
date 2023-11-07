//
//  AccountViewModel.swift
//  Appetizers
//
//  Created by Alejandro Sierro Galán on 5/11/23.
//

import Foundation
import SwiftUI

final class AccountViewModel: ObservableObject {
    
    @AppStorage("user") private var userData: Data?
    
    @Published var user = User()
    @Published var alertItem: AlertItem?
    
    var isValidForm: Bool {
        
        guard !user.firstName.isEmpty && !user.lastName.isEmpty && !user.eMail.isEmpty else {
            alertItem = AlertContext.formIncomplete
            return false
        }
        
        guard user.eMail.isValidEmail else {
            alertItem = AlertContext.invalidEmail
            return false
        }
        
        return true
    }
    
    func saveChanges() {
        guard isValidForm else { return }
        
        do {
            let data = try JSONEncoder().encode(user)
            userData = data
            alertItem = AlertContext.userSavedSucces
        } catch {
            alertItem = AlertContext.userSavedError
        }
        
    }
    
    func retrieveUser() {
        guard let userData = userData else { return }
        do {
            let data = try JSONDecoder().decode(User.self, from: userData)
            user = data
        } catch {
            alertItem = AlertContext.userLoadError
        }
        
    }
    
}
