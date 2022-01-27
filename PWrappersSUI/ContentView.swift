//
//  ContentView.swift
//  PWrappersSUI
//
//  Created by Nikita Batrakov on 26.01.2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var timer = TimeCounter()
    @EnvironmentObject private var userManager: UserManager
    
    var body: some View {
        VStack {
            Text("Hi, \(userManager.name)")
                .font(.largeTitle)
                .padding(.top, 100)
            Text("\(timer.counter)")
                .font(.largeTitle)
                .padding(.top, 100)
            ButtonView(color: .red,
                       action: timer.startTimer,
                       title: timer.buttonTitle)
                .padding(.top, 100)
            Spacer()
            ButtonView(color: .blue,
                       action: tapLogOut,
                       title: "LOG OUT")
                .padding(.bottom, 32)
        }
    }
}

extension ContentView {
    
    private func tapLogOut() {
        userManager.isRegister.toggle()
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserManager())
    }
}
