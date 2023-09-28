//
//  LoginView.swift
//  FacebookCozyEats
//
//  Created by Benjamin Melville on 9/27/23.
//

import SwiftUI

struct LoginView: View {
    
    @State var username: String = ""
    @State var password: String = ""
    
    @State var loggedIn: Bool = false
    
    @State private var animation1: Bool = false
    
    var body: some View {
        ZStack {
            if loggedIn {
                HomeView()
            } else {
                
                LinearGradient(colors: [Color("dark-green"), Color("greenish"), Color("light-green")],
                               startPoint: .bottom,
                               endPoint: .top)
                .ignoresSafeArea()
                
                VStack {
                    Spacer()
                    Image(systemName: "fork.knife.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                        .foregroundColor(.white)
                    
                    Text("Login")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                    
                    TextField("username", text: $username)
                        .frame(height: 55)
                        .font(.headline)
                        .padding(.horizontal)
                        .background(.white.opacity(0.6))
                        .cornerRadius(10.0)
                    
                    
                    SecureField("password", text: $password)
                        .frame(height: 55)
                        .font(.headline)
                        .padding(.horizontal)
                        .background(.white.opacity(0.6))
                        .cornerRadius(10.0)
                    
                    Spacer()
                    
                    Button {
                        loggedIn.toggle()
                    } label: {
                        Text("Login")
                        
                    }
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(.white.opacity(0.3))
                    .foregroundStyle(.white)
                    .font(.title)
                    .fontWeight(.bold)
                    .cornerRadius(10.0)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    Spacer()
                }
                .padding(30)
            }
        }
    }
}

#Preview {
    LoginView()
}
