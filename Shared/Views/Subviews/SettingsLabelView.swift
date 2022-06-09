//
//  SettingsLabelView.swift
//  Circles
//
//  Created by Joseph DeWeese on 6/8/22.
//

import SwiftUI

struct SettingsLabelView: View {
    //JWD: PROPERTIES
    var labelText: String = ""
    var labelImage: String = ""
    var body: some View {
        
        VStack {
            HStack {
                Text(labelText)
                    .fontWeight(.bold)
                Spacer()
                Image(systemName: labelImage)
                
            }
            Divider()
                .padding(.vertical, 4)
        }
    }
}

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText:  "Test Label", labelImage: "heart")
            .previewLayout(.sizeThatFits)
    }
}
