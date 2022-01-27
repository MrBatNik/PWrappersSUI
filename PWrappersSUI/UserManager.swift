//
//  UserManager.swift
//  PWrappersSUI
//
//  Created by Nikita Batrakov on 26.01.2022.
//

import Foundation
import SwiftUI

class UserManager: ObservableObject {
    @AppStorage("isRegister") var isRegister = false
    @AppStorage("userName")var name = ""
}
