//
//  CreateRecipe.swift
//  VeryCreative
//
//  Created by KEPLEY, MATTHEW O. on 4/10/24.
//

import SwiftUI
import SwiftData

struct CreateRecipe: View {
    @Environment(\.dismiss) var dismiss
    @Environment(\.modelContext) var context
    @State private var recipe = Recipe()
    
    var body: some View {
        List {
            TextField("Name", text: $recipe.title)
            Toggle("Vegan?", isOn: $recipe.isVegan)
            TextField("Description", text: $recipe.desc)
            
            Button("Create") {
                context.insert(recipe)
                dismiss()
            }
        }
    }
}

//#Preview {
//    CreateRecipe()
//}
