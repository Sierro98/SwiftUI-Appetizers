//
//  AccountView.swift
//  Appetizers
//
//  Created by Alejandro Sierro Galán on 27/10/23.
//

import SwiftUI

struct AccountView: View {
    
    @StateObject var viewmodel = AccountViewModel()
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Personal Info")) {
                    TextField("First Name", text: $viewmodel.user.firstName)
                    TextField("Last Name", text: $viewmodel.user.lastName)
                    TextField("eMail", text: $viewmodel.user.eMail)
                        .keyboardType(.emailAddress)
                        .textInputAutocapitalization(.never)
                        .autocorrectionDisabled()
                    DatePicker("Birthday", selection: $viewmodel.user.birthDay, displayedComponents: .date)
                        .foregroundStyle(.secondary)
                    
                    Button(action: { viewmodel.saveChanges() }) {
                        Text("Save Changes")
                            .foregroundStyle(.brandPrimary)
                    }
                }
                
                Section(header: Text("Request")) {
                    BrandToggle(title: "Extra Napkins",
                                isOn: $viewmodel.user.extraNapkins)
                    BrandToggle(title: "Frequent Refills",
                                isOn: $viewmodel.user.frequentRefills)
                }
                
            }
            .navigationTitle("Account")
        }
        .onAppear {
            viewmodel.retrieveUser()
        }
        .alert(item: $viewmodel.alertItem) { alertItem in
            Alert(title: alertItem.title,
                  message: alertItem.message,
                  dismissButton: alertItem.dismissButton)
        }
    }
}

#Preview {
    AccountView()
}
