//
//  AddEmailHeaderView.swift
//  FinalprojectAD
//
//  Created by Angga Kusuma on 03/07/23.
//

import SwiftUI

struct AddEmailHeaderView: View {
    
        let tittle1: String
        let tittle2: String
        
        var body: some View {
            VStack(alignment: .trailing){
                HStack{ Spacer() }
                Text(tittle1)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal)
                
                Text(tittle2)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal)
            }
            .frame(height: 260, alignment: .leading)
            .padding(.leading)
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            .clipShape(RoundedShape(corners: [.bottomLeft]))
        }
}

struct AddEmailHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        AddEmailHeaderView(tittle1: "Add your email", tittle2: "You'll use this email to sign in to your account")
    }
}
