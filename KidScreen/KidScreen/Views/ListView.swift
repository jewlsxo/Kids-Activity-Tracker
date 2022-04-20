//
//  ListView.swift
//  KidScreen
//
//  Created by Michael Kelley on 4/20/22.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [String] = ["This is the first child"]
    
    var body: some View {
        List{
            ForEach(items, id: \.self) {item in
                ListRowView(title: item)
            }
        }
        .navigationTitle("Kid Page🧒")
        .navigationBarItems(leading: EditButton(), trailing: NavigationLink("Add", destination: AddKidView()))
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListView()
        }
       
    }
}
