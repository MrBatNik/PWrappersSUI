//
//  CustomTextView.swift
//  PWrappersSUI
//
//  Created by Nikita Batrakov on 27.01.2022.
//

import SwiftUI

struct CustomTextView: View {
    let text: Int
    let color: Color
    
    var body: some View {
        Text("\(text)")
            .foregroundColor(color)
    }
}

struct CustomTextView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTextView(text: 0, color: .red)
    }
}
