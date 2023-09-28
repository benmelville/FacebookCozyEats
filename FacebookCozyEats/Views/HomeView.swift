//
//  HomeView.swift
//  FacebookCozyEats
//
//  Created by Benjamin Melville on 9/27/23.
//

import SwiftUI



struct HomeView: View {
    let food = FoodItems()
    let columns: [GridItem] = [GridItem(.flexible(), spacing: 6, alignment: nil)]
    
    @State private var selectedItems: [Bool] = Array(repeating: false, count: 9)

    var body: some View {
        NavigationStack {
            TabView {
                ScrollView {
                    LazyVGrid(columns: columns,
                              alignment: .center,
                              spacing: 10,
                              pinnedViews: [.sectionHeaders],
                              content: {
                        
                        
                        // MARK: AMERICAN FOOD ITEMS
                        Section(header:
                                    Text("American 🍔")
                                        .foregroundColor(.white)
                                        .font(.title2)
                                        .fontWeight(.semibold)
                                        .frame(maxWidth: .infinity, alignment: .center)
                                        .frame(height: 100, alignment: .bottom)
                                        .background(Color("greenish"))
                                        .cornerRadius(10.0)
                        ){
                            ForEach(0..<3) { index in
                                NavigationLink {
                                    FoodDetailView(image: food.foodItems[index].image,
                                                   name: food.foodItems[index].name,
                                                   timeUntilReady: food.foodItems[index].timeUntilReady,
                                                        price: food.foodItems[index].price,
                                                        isSelected: selectedItems[index])

                                } label: {
                                    FoodGridItemView(image: food.foodItems[index].image,
                                                name: food.foodItems[index].name,
                                                timeUntilReady: food.foodItems[index].timeUntilReady,
                                                     price: food.foodItems[index].price,
                                                     isSelected: selectedItems[index])
                                }
                                
                            }
                        }
                        
                        
                        // MARK: CHINESE FOOD ITEMS
                        Section(header:
                                    Text("Chinese 🥡")
                                        .foregroundColor(.white)
                                        .font(.title2)
                                        .fontWeight(.semibold)
                                        .frame(maxWidth: .infinity, alignment: .center)
                                        .frame(height: 100, alignment: .bottom)
                                        .background(Color("greenish"))
                                        .cornerRadius(10.0)
                    
                        ){
                            ForEach(3..<6) { index in
                                NavigationLink {
                                    FoodDetailView(image: food.foodItems[index].image,
                                                   name: food.foodItems[index].name,
                                                   timeUntilReady: food.foodItems[index].timeUntilReady,
                                                        price: food.foodItems[index].price,
                                                        isSelected: selectedItems[index])

                                } label: {
                                    FoodGridItemView(image: food.foodItems[index].image,
                                                name: food.foodItems[index].name,
                                                timeUntilReady: food.foodItems[index].timeUntilReady,
                                                     price: food.foodItems[index].price,
                                                     isSelected: selectedItems[index])
                                }
                            }
                        }
                        
                        
                        
                        
                        // MARK: MEXICAN FOOD ITEMS
                        Section(header:
                                    Text("Mexican 🌮")
                                        .foregroundColor(.white)
                                        .font(.title2)
                                        .fontWeight(.semibold)
                                        .frame(maxWidth: .infinity, alignment: .center)
                                        .frame(height: 100, alignment: .bottom)
                                        .background(Color("greenish"))
                                        .cornerRadius(10.0)
                        ){
                            ForEach(6..<9) { index in
                                NavigationLink {
                                    FoodDetailView(image: food.foodItems[index].image,
                                                   name: food.foodItems[index].name,
                                                   timeUntilReady: food.foodItems[index].timeUntilReady,
                                                        price: food.foodItems[index].price,
                                                        isSelected: selectedItems[index])

                                } label: {
                                    FoodGridItemView(image: food.foodItems[index].image,
                                                name: food.foodItems[index].name,
                                                timeUntilReady: food.foodItems[index].timeUntilReady,
                                                     price: food.foodItems[index].price,
                                                     isSelected: selectedItems[index])
                                }
                            }
                        }
                    })
                }
                .navigationTitle("Cozy Eats")
                .background(LinearGradient(colors: [Color("dark-green"), Color("greenish")],
                                           startPoint: .bottom,
                                           endPoint: .top)
                    .ignoresSafeArea())
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("home")
                }
                .ignoresSafeArea(edges: .top)
                .toolbarBackground(.red)
                
                ProfileView()
                    .tabItem {
                        Image(systemName: "person.fill")
                        Text("profile")
                    }
            }
        }
    }
    
}

struct FoodGridItemView: View {
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
                .frame(maxHeight: 300)
                .frame(maxWidth: .infinity)
                .cornerRadius(10.0)
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
        }
    }
}
            

//                .tabItem {
//                    Image(systemName: "house.fill")
//                    Text("home")
//                        .font(.title)
                
//                ProfileView()
//    }
//            .navigationTitle("Cozy Eats 🍽️")
//            .fontDesign(.default)
//    }
//}

#Preview {
    HomeView()
}

struct ProfileView: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [Color("dark-green"), Color("greenish"), Color("light-green")],
                           startPoint: .bottom,
                           endPoint: .top)
            .ignoresSafeArea()
            
            VStack(spacing: 20) {
                Image("ben-melville")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                Group {
                    Text("Ben")
                    Text("Age: 22")
                    Text("Favorite foods: American, Mexican, Chinese")
                }



                NavigationLink {
                    LoginView()
                        .navigationBarBackButtonHidden(true)

                } label: {
                    Text("SIGN OUT")
                        .foregroundStyle(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(.black)
                        .clipShape(Capsule())
                }
            }
            .font(.title)
            .foregroundStyle(.accent)
            .padding()
            .padding(.vertical, 40)
            .padding(.horizontal, 20)
            .background(Color("greenish"))
            .cornerRadius(10)
        .shadow(radius: 10)
        }
    }
}





