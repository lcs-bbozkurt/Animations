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
    
    // 1. Initial opacity for unfilled star
    @State var unfilledStarOpacity = 1.0 // Opaque
    
    
    // 1. Initial opacity for filled star
    @State var filledStarOpacity = 0.0 // See-thorugh
    
    
    // MARK: Computed Properties
    
    
    var body: some View {
        
        ZStack {
            
            
            // Filled Star
            Image(systemName: "star.fill")
                .resizable()
                .frame(width: 40, height: 40)
                .foregroundColor(.yellow)
                .rotation3DEffect(.degrees(starRotation), axis: (x: 0, y: 1, z: 0))
                .opacity(filledStarOpacity)
            
            // 2. Trigger the stage change with a tap.
                .onTapGesture {
                    withAnimation (
                        Animation.easeInOut(duration: 2.0)
                    ) {
                        // 3. Rotate the star (change rotation state)
                        starRotation += 360.0 * 2      // 3. Desired end opacity for unfilled star
                       
                        unfilledStarOpacity += 0.0 // See-through
                        
                        
                        // 3. Desired end opacity for filled star
                        filledStarOpacity = 1.0 // See-through

                        
                        
                    
                }
            }
            
            
            // Unfilled star
            Image(systemName: "star")
                .resizable()
                .frame(width: 40, height: 40)
                .foregroundColor(.yellow)
                .rotation3DEffect(.degrees(starRotation), axis: (x: 0, y: 1, z: 0))
                .opacity(unfilledStarOpacity)

            // 2. Trigger the stage change with a tap.
                .onTapGesture {
                    withAnimation (
                        Animation.easeInOut(duration: 2.0)
                    ) {
                        // 3. Rotate the star (change rotation state)
                        starRotation += 360.0 * 2


                  
                }
            }
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
