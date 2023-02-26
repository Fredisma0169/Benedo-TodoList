//
//  AddView.swift
//  Todo Benedo
//
//  Created by Fredisma OUEDRAOGO on 26/02/2023.
//

import SwiftUI

struct AddView: View {
    
    @State private var textFieldText: String = ""
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Type something here...", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color("bgColor1"))
                    .cornerRadius(10)
                Button {
                    
                } label: {
                    Text("SAVE")
                        .foregroundColor(.white)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                }

            }
            .padding(14)
        }
        .navigationTitle("Add an Item 🖊️")
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationSplitView {
            AddView()
        } detail: {
            AddView()
        }

    }
}
