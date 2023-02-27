//
//  ListView.swift
//  Todo_Benedo
//
//  Created by Fredisma OUEDRAOGO on 25/02/2023.
//

import SwiftUI

struct ListView: View {
    
    @EnvironmentObject var listViewModel: ListViewModel
    
    var body: some View {
        List {
            ForEach(listViewModel.items) { item in
                ListRowView(item: item)
                    .onTapGesture {
                        withAnimation(.spring()) {
                            listViewModel.updateItem(item: item)
                        }
                    }
            }
            .onDelete (perform: listViewModel.deleteItem) // MARK: Pour Supprimer
            .onMove (perform: listViewModel.moveItem) // MARK: Pour changer la position
//            .swipeActions // Mark: Autre option
        }
        .listStyle(.plain)
        .navigationTitle("Benedo📝")
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                EditButton()
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink {
                    AddView()
                } label: {
                    Text("Ajouter")
                }
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
       
        NavigationView {
            ListView()
        }
//        detail: {
//            ListView()
//        }
        .environmentObject(ListViewModel())

    }
}
