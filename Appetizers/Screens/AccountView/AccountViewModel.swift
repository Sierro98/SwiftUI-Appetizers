//
//  AccountViewModel.swift
//  Appetizers
//
//  Created by Alejandro Sierro Galán on 5/11/23.
//

import Foundation

final class AccountViewModel: ObservableObject {
    
    @Published var firstName = String()
    @Published var lastName = String()
    @Published var eMail = String()
    @Published var birthDay = Date()
    @Published var extraNapkins: Bool = false
    @Published var frequentRefills: Bool = false
    
}
