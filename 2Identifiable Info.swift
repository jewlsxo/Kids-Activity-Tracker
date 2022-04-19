//
//  Identifiable Info.swift
//  Activity Trackers
//
//  Created by Julissa Salinas on 4/1/22.
//

import SwiftUI

struct Identifiable_Info: View {
    @State var firstName = ""
    @State var middleName = ""
    @State var lastName = ""
    @State var birthday = ""
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section {
                        TextField("First Name: ", text: $firstName).keyboardType(/*@START_MENU_TOKEN@*/.default/*@END_MENU_TOKEN@*/)
                        TextField("Middle Name: ", text: $middleName)
                        TextField("Last Name: ", text: $lastName)
                        DatePicker(selection: .constant(Date()), label: { Text("Birthday") })
                        
                    }
                    Button("Submit") {
                        
                    }
                }
                .navigationTitle("Kids Info")
            }
        }
        }
    }

struct Identifiable_Info_Previews: PreviewProvider {
    static var previews: some View {
        Identifiable_Info()
    }
}
