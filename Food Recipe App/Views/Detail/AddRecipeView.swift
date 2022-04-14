//
//  AddRecipeView.swift
//  Food Recipe App
//
//  Created by Sunny Shehzad on 12/04/22.
//

import SwiftUI

struct AddRecipeView: View {
    
    @State var name: String = ""
    @State var category: Category = Category.main
    @State var description: String = ""
    @State var ingredients: String = ""
    @State var directions: String = ""
    @State var navigateToRecipe = false
    
    @EnvironmentObject var recipesVM: RecipiesViewModel
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView{
            Form{
                Section(header: Text("Name")){
                    TextField("Name", text: $name)
                }
                
                Section(header: Text("Category")){
                    Picker("Category", selection: $category) {
                        ForEach(Category.allCases){ category in
                            Text(category.rawValue)
                                .tag(category)
                        }
                    }
                    .pickerStyle(.menu)
                }
                
                Section(header: Text("Description")){
                    TextEditor(text: $description)
                }
                
                Section(header: Text("Ingredients")){
                    TextEditor(text: $ingredients)
                }
                
                Section(header: Text("Directions")){
                    TextEditor(text: $directions)
                }
            }
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        Label("Cancel", systemImage: "xmark")
                            .labelStyle(.iconOnly)
                    }

                }
                
                ToolbarItem {
                    
                    NavigationLink(isActive: $navigateToRecipe) {
                        RecipeView(recipe: recipesVM.recipes.sorted{ $0.datePublished > $1.datePublished }[0])
                            .navigationBarBackButtonHidden(true)
                    } label: {
                        Button {
                            saveRecipe()
                            navigateToRecipe = true
                        } label: {
                            Label("Cancel", systemImage: "checkmark")
                                .labelStyle(.iconOnly)
                        }
                    }
                    .disabled(name.isEmpty)
                }
            })
            .navigationTitle("New  Recipe")
            .navigationBarTitleDisplayMode(.inline)
        }
        .navigationViewStyle(.stack)
    }
}

struct AddRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        AddRecipeView()
            .environmentObject(RecipiesViewModel())
    }
}

extension AddRecipeView {
    private func saveRecipe(){
        
        let now = Date()
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-mm-dd"
        
        let datePublished = dateFormatter.string(from: now)
        print(datePublished)
        
        let recipe = Recipe(name: name, image: "", description: description, ingredients: ingredients, directions: directions, category: category.rawValue, datePublished: datePublished, url: "")
        
        recipesVM.addRecipe(recipe: recipe)
    }
}
