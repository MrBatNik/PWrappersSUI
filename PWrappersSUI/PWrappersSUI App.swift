//
//  PWrappersSUIApp.swift
//  PWrappersSUI
//
//  Created by Nikita Batrakov on 26.01.2022.
//

import SwiftUI

@main
struct PWrappersSUIApp: App {
    @StateObject private var userManager = UserManager()
    
    var body: some Scene {
        WindowGroup {
            StarterView()
                .environmentObject(userManager)
        }
    }
}
