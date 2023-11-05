//
//  SettingsToggle.swift
//  Appetizers
//
//  Created by Alejandro Sierro Galán on 5/11/23.
//

import SwiftUI

struct BrandToggle: View {
    
    let title: String
    @Binding var isOn: Bool
    
    var body: some View {
        Toggle(title, isOn: $isOn)
            .foregroundStyle(.secondary)
            .toggleStyle(SwitchToggleStyle(tint: .brandPrimary))
    }
}

#Preview {
    BrandToggle(title: "Extra Napkins", isOn: .constant(false))
}
