//
//  Teacher.swift
//  Activity Trackers
//
//  Created by Julissa Salinas on 4/1/22.
//

import SwiftUI

struct Teacher: View {
    @State var teachName = ""
    @State var teachEmail = ""
    @State var teachNum = ""
    @State var classRmNum = ""
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section {
                        TextField("Teachers Name: ", text: $teachName)
                        TextField("Teacher  Email: ", text: $teachEmail)
                        TextField("Teacher Phone Number: ", text: $teachNum)
                        TextField("Class Room Number: ", text: $classRmNum)
                        }
                    Button("Submit") {
                                            }
                    }
            .navigationTitle("Teacher Information")
                }
            }
        }
    }


struct Teacher_Previews: PreviewProvider {
    static var previews: some View {
        Teacher()
    }
}
