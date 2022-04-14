//
//  HomeView.swift
//  Food Recipe App
//
//  Created by Sunny Shehzad on 02/04/22.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var recipesVM: RecipiesViewModel
    
    var body: some View {
        NavigationView {
            ScrollView {
                RecipeList(recipes: recipesVM.recipes)
            }
            .navigationTitle("My Recipes")
        }
        .navigationViewStyle(.stack)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(RecipiesViewModel())
    }
}
