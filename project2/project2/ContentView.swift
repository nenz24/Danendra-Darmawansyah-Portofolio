//
//  ContentView.swift
//  project2
//
//  Created by Kleo Handayani on 13/02/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            Form{
                //section profile
                Section(){
                    NavigationLink(destination: Hasil()){
                        HStack{
                            Image("profile")
                                .resizable()
                                .frame(width: 50, height: 60)
                                .clipShape(Circle())
                            //Nama dan status
                            VStack(alignment:.leading){
                                Text("Ni Kadek Kleo Dwi Handayani").font(.headline)
                                Text("S1 Matematika UNUD").font(.caption)
                                
                            }
                        }
                    }
                }
                //section pengaturan
                Section(header: Text("Pengaturan Umum")){
                    NavigationLink(destination: Hasil()){
                        HStack(spacing:20){
                            Image(systemName: "star.fill")
                                .frame(width: 35, height: 35)
                                .background(Color.orange)
                                .cornerRadius(10)
                                .foregroundColor(Color.white)
                            
                            Text("Pesan Berbintang")
                        }
                        }
                    NavigationLink(destination: Hasil()){
                        HStack(spacing:20){
                            Image(systemName: "tv")
                                .frame(width: 35, height: 35)
                                .background(Color.green)
                                .cornerRadius(10)
                                .foregroundColor(Color.white)
                            
                            Text("WhatsApp Web / Desktop")
                        }
                    }
                }
                
                //section pengaturan akun
                Section(header: Text("Pengaturan Akun")){
                    NavigationLink(destination: Hasil()){
                        HStack(spacing:20){
                            Image(systemName: "person")
                                .frame(width: 35, height: 35)
                                .background(Color.blue)
                                .cornerRadius(10)
                                .foregroundColor(Color.white)
                            
                            Text("Akun")
                            
                        }
                    }
                    NavigationLink(destination: Hasil()){
                        HStack(spacing:20){
                            Image(systemName: "phone.circle")
                                .frame(width: 35, height: 35)
                                .background(Color.green)
                                .cornerRadius(10)
                                .foregroundColor(Color.white)
                            
                            Text("Chat")
                        }
                    }
                }
                
            }.navigationBarTitle("Setting")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Hasil: View{
    var body: some View{
        Text("Testing")
    }
}
