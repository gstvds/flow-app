//
//  SettingsCell.swift
//  Flow
//
//  Created by Gustavo Silva on 02/04/21.
//

import SwiftUI

struct ToggleSettingsCell: View {
    
    var title: String
    var imageName: String
    var color: Color
    @State var isOn: Bool

    var body: some View {
        HStack {
            Image(systemName: imageName)
                .font(.custom("icon", size: 23))
                .foregroundColor(color)
            
            Text(title)
                .font(.custom("icon", size: 16))
                .padding(.leading, 10)
            
            Spacer()
            
            Toggle("", isOn: $isOn)
        } //: HStack
    }
}

struct ToggleSettingsCell_Previews: PreviewProvider {
    static var previews: some View {
        ToggleSettingsCell(title: "Test", imageName: "sparks", color: .purple, isOn: true)
    }
}
