//
//  XButton.swift
//  Appetizers
//
//  Created by Alejandro Sierro Galán on 4/11/23.
//

import SwiftUI

struct XCloseButton: View {
    
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            ZStack {
                Circle()
                    .frame(width: 30)
                    .foregroundStyle(.white)
                    .opacity(0.6)
                Image(systemName: "xmark")
                    .frame(width: 44, height: 44)
                    .imageScale(.small)
                    .foregroundStyle(.gray)
                    .fontWeight(.semibold)
            }
        }
    }
}

#Preview {
    XCloseButton() {}
}
