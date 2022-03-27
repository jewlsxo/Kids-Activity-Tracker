//
//  ContentView.swift
//  Kids Activity Tracker 22
//
//  Created by Julissa Salinas on 3/27/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Spacer()
            Image("tracker icon")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Text("Kids Activity Tracker")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.blue)
                .multilineTextAlignment(.center)
                
            Spacer()
            
        }
        
            
            
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
