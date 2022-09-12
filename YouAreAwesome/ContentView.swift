//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Kainoa Jim on 9/5/22.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = ""
    @State private var imageName = ""
    @State private var imageNumber = 0
    @State private var messageNumber = 0
    @State private var lastMessageNumber = -1
    @State private var lastImageNumber = -1
    
    var body: some View {
        
        VStack {
            
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .foregroundColor(.red)
                .frame(height: 150)
                .frame(maxWidth: .infinity)
                .padding()
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .cornerRadius(30)
                .shadow(radius: 30)
                .padding()
            
            
            Spacer()
            
            
            Spacer()
            
            Button("Show Message") {

                
                let messages = ["You Are Awesome!",
                                "You Are Great!",
                                "Fabulous? That's You!",
                                "You Are Built Different!",
                                "You Can't Be Stopped!",
                                "You Da Best!"]
                
                
                var messageNumber: Int
                
                repeat {
                    messageNumber = Int.random(in: 0...messages.count - 1)
                } while messageNumber == lastMessageNumber
                
                messageString = messages[messageNumber]
                lastMessageNumber = messageNumber
                
//                imageName = "image\(Int.random(in: 0...9))"
                var imageNumber: Int
                repeat {
                    imageNumber = Int.random(in: 0...9)
                } while imageNumber == lastImageNumber
                imageName = "image\(imageNumber)"
                lastImageNumber = imageNumber
                

                
            }
            .buttonStyle(.borderedProminent)
            
        }
        .padding()
        
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
