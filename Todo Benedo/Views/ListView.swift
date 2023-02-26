//
//  ListView.swift
//  Todo_Benedo
//
//  Created by Fredisma OUEDRAOGO on 25/02/2023.
//

import SwiftUI

struct ListView: View {
    @State private var items: [String] = [
        "This is the first title!",
        "This is the second!",
        "Third"
    ]
    
    var body: some View {
        List {
            ForEach(items, id: \.self) { item in
                ListRowView(title: item)
            }
        }
        .listStyle(.plain)
        .navigationTitle("ToDo List📝")
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                EditButton()
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink {
                    Text("Destination")
                } label: {
                    Text("Add")
                }

            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
       
        NavigationSplitView {
            ListView()
        } detail: {
            ListView()
        }

    }
}
