//
//  ContentView.swift
//  Animations
//
//  Created by Berk Bozkurt on 2022-04-27.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: Stored Properties
    // 1. Initial state of rotation for the star.
    @State var starRotation = 0.0
    
    
    // MARK: Computed Properties
    
    
    var body: some View {
        Image(systemName: "star")
            .resizable()
            .frame(width: 40, height: 40)
            .foregroundColor(.yellow)
            .rotation3DEffect(.degrees(starRotation), axis: (x: 0, y: 1, z: 0))
        
        // 2. Trigger the stage change with a tap.
            .onTapGesture {
                withAnimation {
                    // 3. Rotate the star (change rotation state)
                    starRotation += 360.0 * 2
                    
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
