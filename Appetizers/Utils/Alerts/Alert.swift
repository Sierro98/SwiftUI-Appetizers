//
//  Alert.swift
//  Appetizers
//
//  Created by Alejandro Sierro Galán on 30/10/23.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    //MARK: - Network Alerts
    
    static let invalidData = AlertItem(title: Text("Server Error"),
                                       message: Text("The data received from the server was invalid. Please contact support."),
                                       dismissButton: .default(Text("Ok")))
    
    static let invalidURL = AlertItem(title: Text("Server Error"),
                                       message: Text("There was an issue connecting to the server. If the error continues please contact with support."),
                                       dismissButton: .default(Text("Ok")))
    
    static let invalidResponse = AlertItem(title: Text("Server Error"),
                                       message: Text("Invalid reponse from the server. Please try again later or contact support"),
                                       dismissButton: .default(Text("Ok")))
    
    static let unable2Complete = AlertItem(title: Text("Server Error"),
                                       message: Text("Unable to complete your request at this time. Please check your internet conection"),
                                       dismissButton: .default(Text("Ok")))
    
    //MARK: - Form Alerts
    
    static let formIncomplete = AlertItem(title: Text("Form Incomplete"),
                                       message: Text("Please fill out all the fields in the form."),
                                       dismissButton: .default(Text("Ok")))
    
    static let invalidEmail = AlertItem(title: Text("Invalid Email"),
                                       message: Text("The email has a wrong format, please check your email."),
                                       dismissButton: .default(Text("Ok")))
    
    static let userSavedSucces = AlertItem(title: Text("Profile Saved"),
                                       message: Text("The user has been saved succesfully."),
                                       dismissButton: .default(Text("Ok")))
    
    static let userSavedError = AlertItem(title: Text("Error Saving User"),
                                       message: Text("There has been an error saving the user profile."),
                                       dismissButton: .default(Text("Ok")))
    
    static let userLoadError = AlertItem(title: Text("Error Loading User"),
                                       message: Text("There has been an error while loading the user, please try again later."),
                                       dismissButton: .default(Text("Ok")))
}


