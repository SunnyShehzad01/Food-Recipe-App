//
//  CategoryView.swift
//  Food Recipe App
//
//  Created by Sunny Shehzad on 12/04/22.
//

import SwiftUI

struct CategoryView: View {
    @EnvironmentObject var recipesVM: RecipiesViewModel

    var category: Category
    
    //As Computed Property
    var recipies : [Recipe] { recipesVM.recipes.filter{ $0.category == category.rawValue } }
    
    var body: some View { 
        ScrollView{
            RecipeList(recipes: recipies)
        }
        .navigationTitle(category.rawValue + "s")
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(category: Category.breakfast)
            .environmentObject(RecipiesViewModel())
    }
}
