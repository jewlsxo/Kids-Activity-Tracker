//
//  AddKidView.swift
//  KidScreen
//
//  Created by Michael Kelley on 4/20/22.
//

import SwiftUI

struct AddKidView: View {
    
    @State var textFieldText: String = ""
    
    var body: some View {
        ScrollView{
            VStack {
                TextField("Type something here", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
                    .cornerRadius(10)
                
                Button(action: {
                    
                }, label: {
                    Text("Save".uppercased())
                        .foregroundColor(.white)
                        .frame(height:55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                })
            }
            .padding(16)
        }
        .navigationTitle("Add a Child")
    }
}

struct AddKidView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddKidView()
        }
        
    }
}
