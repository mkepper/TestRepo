//
//  ContentView.swift
//  VeryCreative
//
//  Created by KEPLEY, MATTHEW O. on 4/10/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    @State private var showCreate = false
    @Environment (\.modelContext) var context
    @Query var recipes:[Recipe]
    
    var body: some View {
        NavigationStack {
            List{
                ForEach(recipes) { recipe in
                    HStack {
                        VStack(alignment: .leading) {
                            
                            if recipe.isVegan {
                                Image(systemName: "leaf") //I came up with the leaf - Sean
                                    .symbolVariant(.fill)
                                    .foregroundColor(.green)
                                    .font(.largeTitle)
                                    .bold()
                            }
                            
                            Text(recipe.title)
                                .font(.largeTitle)
                                .bold()
                            
                            Text(recipe.desc)
                        }
                    }
                }
            }
            .toolbar {
                ToolbarItem {
                    Button(action: {
                        showCreate.toggle()
                    }, label: {
                        Label("Add Item", systemImage: "plus")
                    })
                }
            }
            .sheet(isPresented: $showCreate,
                   content: {
                NavigationStack {
                    CreateRecipe()
                }
            })
        }
    }
}

//#Preview {
//    ContentView()
//}
