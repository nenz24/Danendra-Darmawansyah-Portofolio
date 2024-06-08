//
//  CreateUsernameHeaderView.swift
//  FinalprojectAD
//
//  Created by Angga Kusuma on 03/07/23.
//

import SwiftUI

struct CreateUsernameHeaderView: View {
    
        let tittle1: String
        let tittle2: String
        
        var body: some View {
            VStack(alignment: .leading){
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
            .clipShape(RoundedShape(corners: [.bottomRight]))
        }
}

struct CreateUsernameHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        CreateUsernameHeaderView(tittle1: "Create username", tittle2: "Pick your username for your account. You can always change it later")
    }
}
