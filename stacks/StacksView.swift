//
//  StacksView.swift
//  stacks
//
//  Created by عبدالله حافظ on 06/09/1446 AH.
//

import SwiftUI

struct StacksView: View {
    var body: some View {
        ZStack {
            // color the background
            Color.blue
                .ignoresSafeArea(edges: .all) //this fills the safe areas with the color
            // VStack to put elements in virtical order
            VStack {
                // image showing a sun figure
                Image(systemName: "sun.max")
                    .resizable()
                    .frame(width: 100, height: 100) // image size dimentions
                    .foregroundColor(.yellow) // image color
                    .cornerRadius(50) // doesn't make a difference
                    .shadow(radius: 5) // doesn't work idk why
                
                // text part to show name
                Text("Hello, My Name Is Abdullah hafiz")
                    .padding()
                    .multilineTextAlignment(.center) // make it in the middle
                    .font(.largeTitle) // font type
                    .foregroundColor(.white) // font color
                // HStack to make them beside eachother
                HStack {
                    // left button
                    Button(action: {}) {
                        Text("Left")
                            .font(.headline) // font type
                            .foregroundColor(.white) // white font color
                            .padding() // added padding for the text so the button border isn't tuching it
                            .background(Color.green) // button background color
                            .cornerRadius(10) // added radius to make it pretty
                    }
                    // space between buttons
                    Spacer()
                    // right button
                    Button(action: {}) {
                        Text("Right")
                            .font(.headline) // all same as the other button
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.red)
                            .cornerRadius(10)
                    }
                    
                }
                // padding for the vstack
            }.padding()
        }
    }
}
// preview 
#Preview {
    StacksView()
}
