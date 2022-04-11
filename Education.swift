//
//  Education.swift
//  Activity Trackers
//
//  Created by Julissa Salinas on 3/31/22.
//

import SwiftUI

struct Education: View {
    @State var schoolName = ""
    @State var schoolEmail = ""
    @State var schoolNum = ""
    @State var schoolAdd = ""
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section {
                        TextField("School Name: ", text: $schoolName)
                        TextField("School Email: ", text: $schoolEmail)
                        TextField("School Phone Number: ", text: $schoolNum)
                        TextField("School Address: ", text: $schoolAdd)
                        }
                    Button("Submit") {
                        
                    }
                    }
            .navigationTitle("School Information")
                }
            }
        }
    }

struct Education_Previews: PreviewProvider {
    static var previews: some View {
        Education()
    }
}
