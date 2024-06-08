//
//  SettingView.swift
//  Login page
//
//  Created by Kleo Handayani on 23/06/23.
//

import SwiftUI

struct SettingView: View {
    let imageName: String
    let title: String
    let tintColor: Color
    
    var body: some View {
        HStack(spacing: 12){
            Image(systemName: imageName)
                .imageScale(.small)
                .font(.title)
                .foregroundColor(tintColor)
            
            Text(title)
                .font(.subheadline)
                .foregroundColor(.black)
            
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView(imageName: "gear", title: "Version", tintColor: Color(.systemGray))
    }
}
