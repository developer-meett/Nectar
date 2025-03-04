//
//  Explore.swift
//  FoodDeliveryMax
//
//  Created by student on 07/02/25.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        ScrollView{
            VStack{
                Text("Find Products")
                    .font(.customfont(.bold, fontSize: 20))
                    .foregroundColor(.primaryText)
                
                SearchTextField(searchText: .constant(""), placeholder: "Search Store")
                    .padding()
                
                HStack{
                    CategoryCard(
                        borderColor: Color.green.opacity(0.9),
                        backgroundColor: Color.green.opacity(0.1),
                        imageName: "frash_fruits",
                        text: "Fresh Fruits & Vegetables",
                        destination: Fruits(favoritesViewModel: FavoritesViewModel.shared, cartViewModel: CartViewModel())
                    )
                    .padding(.trailing)
                    
                    CategoryCard(
                        borderColor: Color.orange.opacity(0.9),
                        backgroundColor: Color.orange.opacity(0.1),
                        imageName: "cooking_oil",
                        text: "Cooking Oil & Ghee",
                        destination: CookingOil(favoritesViewModel: FavoritesViewModel.shared, cartViewModel: CartViewModel())
                    )
                }
                .padding(.bottom)
                
                HStack{
                    CategoryCard(
                        borderColor: Color.red.opacity(0.9),
                        backgroundColor: Color.red.opacity(0.1),
                        imageName: "meat_fish",
                        text: "Meat & Fish",
                        destination: Meat(favoritesViewModel: FavoritesViewModel.shared, cartViewModel: CartViewModel())
                    )
                    .padding(.trailing)
                    
                    CategoryCard(
                        borderColor: Color.purple.opacity(0.9),
                        backgroundColor: Color.purple.opacity(0.1),
                        imageName: "bakery_snacks",
                        text: "Bakery & Snacks",
                        destination: Bakery(favoritesViewModel: FavoritesViewModel.shared, cartViewModel: CartViewModel())
                    )
                }
                .padding(.bottom)
                
                HStack{
                    CategoryCard(
                        borderColor: Color.yellow.opacity(0.9),
                        backgroundColor: Color.yellow.opacity(0.1),
                        imageName: "dairy_eggs",
                        text: "Dairy & Eggs",
                        destination: Eggs(favoritesViewModel: FavoritesViewModel.shared, cartViewModel: CartViewModel())
                    )
                    .padding(.trailing)
                    
                    CategoryCard(
                        borderColor: Color.blue.opacity(0.9),
                        backgroundColor: Color.blue.opacity(0.1),
                        imageName: "beverages",
                        text: "Beverages",
                        destination: Beverages(favoritesViewModel: FavoritesViewModel.shared, cartViewModel: CartViewModel())
                    )
                }
                .padding(.bottom)
            }
        }
    }
}

#Preview {
    ExploreView()
}
