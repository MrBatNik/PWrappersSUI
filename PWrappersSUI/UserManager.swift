//
//  UserManager.swift
//  PWrappersSUI
//
//  Created by Nikita Batrakov on 26.01.2022.
//

import Foundation
import SwiftUI

class UserManager: ObservableObject {
//    @Published var isRegister = false
    @AppStorage("isRegister") var isRegister = false
    @AppStorage("userName")var name = ""
    
    var count = 0
}
