//
//  RegisterView.swift
//  PWrappersSUI
//
//  Created by Nikita Batrakov on 26.01.2022.
//

import SwiftUI

struct RegisterView: View {
    @EnvironmentObject private var userManager: UserManager
    @State private var name = ""
    @State private var color = Color.red
    @State private var text = 0
    @State private var isActive = true
    
    
    var body: some View {
        VStack {
            HStack {
                TextField("Enter your name", text: $name)
                    .onChange(of: name) { newValue in
                        if newValue.count >= 3 {
                            color = .green
                            isActive = false
                        } else {
                            color = .red
                            isActive = true
                        }
                        text = newValue.count
                    }
                    .multilineTextAlignment(.center)
                CustomTextView(text: text, color: color)
            }
            .padding()
            Button(action: registerUser) {
                HStack {
                    Image(systemName: "checkmark.circle")
                    Text("OK")
                }
            }
            .disabled(isActive)
        }
    }
    
    private func registerUser() {
        userManager.name = name
        userManager.isRegister.toggle()
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
