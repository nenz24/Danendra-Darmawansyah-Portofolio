//
//  LoginHeaderView.swift
//  FinalprojectAD
//
//  Created by Angga Kusuma on 03/07/23.
//

import SwiftUI

struct LoginHeaderView: View {
    let tittle1: String
    let tittle2: String
    
    var body: some View {
        VStack(alignment: .center){
            HStack{ Spacer() }
            Text(tittle1)
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            Text(tittle2)
                .font(.largeTitle)
                .fontWeight(.semibold)
        }
        .frame(height: 260)
        .padding(.leading)
        .background(Color(.systemBlue))
        .foregroundColor(.white)
        .clipShape(RoundedShape(corners: [.bottomRight]))
    }
    
}

struct LoginHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        LoginHeaderView(tittle1: "Hello,", tittle2: "Welcome to ADapps")
    }
}
