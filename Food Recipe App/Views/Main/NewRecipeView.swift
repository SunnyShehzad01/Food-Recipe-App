//
//  NewRecipeView.swift
//  Food Recipe App
//
//  Created by Sunny Shehzad on 02/04/22.
//

import SwiftUI

struct NewRecipeView: View {
    @State var showAddRecipe = false
    var body: some View {
        NavigationView {
            Button("Add recipe Manually", action: {
                showAddRecipe.toggle()
            })
                .sheet(isPresented: $showAddRecipe, content: {
                    AddRecipeView()
                })
                .navigationTitle("New Recipies")
        }
        .navigationViewStyle(.stack)
    }
}

struct NewRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        NewRecipeView()
    }
}
