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
                    TextField("First Name", text: $viewmodel.firstName)
                    TextField("Last Name", text: $viewmodel.lastName)
                    TextField("eMail", text: $viewmodel.eMail)
                        .keyboardType(.emailAddress)
                        .textInputAutocapitalization(.never)
                        .autocorrectionDisabled()
                    DatePicker("Birthday", selection: $viewmodel.birthDay, displayedComponents: .date)
                        .foregroundStyle(.secondary)
                    
                    Button(action: { }) {
                        Text("Save Changes")
                            .foregroundStyle(.brandPrimary)
                    }
                }
                
                Section(header: Text("Request")) {
                    BrandToggle(title: "Extra Napkins",
                                isOn: $viewmodel.extraNapkins)
                    BrandToggle(title: "Frequent Refills",
                                isOn: $viewmodel.frequentRefills)
                }
                
            }
            .navigationTitle("Account")
        }
    }
}

#Preview {
    AccountView()
}
