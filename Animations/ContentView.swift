//
//  ContentView.swift
//  Animations
//
//  Created by Berk Bozkurt on 2022-04-27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       Image(systemName: "star")
            .resizable()
            .frame(width: 40, height: 40)
            .foregroundColor(.yellow)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
