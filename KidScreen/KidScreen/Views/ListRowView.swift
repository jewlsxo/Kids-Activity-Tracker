//
//  ListRowView.swift
//  KidScreen
//
//  Created by Michael Kelley on 4/20/22.
//

import SwiftUI

struct ListRowView: View {
    
    let title: String
    
    var body: some View {
        HStack {
            Text(title)
            Spacer()
        }
    }
}

struct ListRowView_Previews: PreviewProvider {
    static var previews: some View {
        ListRowView(title:"this is the fist child")
    }
}
