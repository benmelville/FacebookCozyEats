//
//  FoodDetailView.swift
//  FacebookCozyEats
//
//  Created by Benjamin Melville on 9/27/23.
//

import SwiftUI

struct FoodDetailView: View {
    
    var image: String
    var name: String
    var timeUntilReady: Int
    var price: Int
    @State var isSelected: Bool
    
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(image)
                .resizable()
                .scaledToFit()
                .frame(maxHeight: .infinity)
                .frame(maxWidth: .infinity)
                .cornerRadius(10.0)
            
            Button {
                UIApplication.shared.open(URL(string: "https://www.facebook.com/marketplace/atlanta/search/?query=\(name)")!)
            } label: {
                Text("Link to Facebook Marketplace")
                    .font(.title)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(.black)
                    .foregroundColor(.white)
                    .cornerRadius(20.0)
            }

            
            
            HStack {
                VStack(alignment: .leading) {
                    Text(name)
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                    
                    Text("$\(price)")
                        .font(.title)
                        .foregroundStyle(.white)
                    
                }
                Spacer()
                
                Text("\(timeUntilReady) min away")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
            }
            .padding()
            
            Capsule()
                .frame(height: 10)
            Spacer()
        }
        .background(LinearGradient(colors: [Color("dark-green"), Color("greenish"), Color("light-green")],
                                   startPoint: .bottom,
                                   endPoint: .top)
                                    .ignoresSafeArea())
    }
}

#Preview {
    FoodDetailView(image: "burger", name: "Burger", timeUntilReady: 13, price: 11, isSelected: true)
}


//.font(.title)
//.foregroundStyle(.blue)
//.padding()
//.padding(.vertical, 40)
//.padding(.horizontal, 20)
//.background(.white)
//.cornerRadius(10)
//.shadow(radius: 10)
