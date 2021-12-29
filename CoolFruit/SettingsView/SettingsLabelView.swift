//
//  SettingsLabelView.swift
//  CoolFruit
//
//  Created by Alexander Bowser on 12/25/21.
//

import SwiftUI

struct SettingsLabelView: View {
    var labelText: String
    var labelImage: String
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "CoolFruit!", labelImage: "info.circle")
    }
}
