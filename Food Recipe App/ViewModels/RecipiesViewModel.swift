//
//  RecipiesViewModel.swift
//  Food Recipe App
//
//  Created by Sunny Shehzad on 13/04/22.
//

import Foundation

class RecipiesViewModel: ObservableObject {
    @Published private(set) var recipes: [Recipe] = []
    
    init(){
        recipes = Recipe.all
    }
    
    func addRecipe(recipe: Recipe){
        recipes.append(recipe)
    }
}
