//
//  ButtonSettingsCell.swift
//  Flow
//
//  Created by Gustavo Silva on 02/04/21.
//

import SwiftUI

struct ButtonSettingsCell: View {
    var title: String
    var color: Color
    var hasImage: Bool?
    var imageName: String?
    var hasIcon: Bool?

    var body: some View {
        HStack {
            hasImage.map {_ in
                Image(systemName: imageName!)
                    .font(.custom("icon", size: 23))
            }

            Text(title)
                .font(.custom("title", size: 16))
                .padding(.leading, 10)
            
            Spacer()
            
            hasIcon.map {_ in
                Image(systemName: "chevron.right")
                    .font(.headline)
                    .foregroundColor(.gray)
            }
        } //: HStack
    }
}

struct ButtonSettingsCell_Previews: PreviewProvider {
    static var previews: some View {
        ButtonSettingsCell(title: "Test", color: .black)
    }
}
