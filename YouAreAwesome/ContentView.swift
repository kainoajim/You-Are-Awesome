//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Kainoa Jim on 9/5/22.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = "When the Genius Bar needs help, they call you!"
    
    var body: some View {
        
        VStack {
            
            Spacer()
            
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .foregroundColor(.red)
                .frame(height: 150)
                .frame(maxWidth: .infinity)
            //                    .border(.orange, width: 1)
                .padding()
            
            //                Spacer()
            Spacer()
            
            HStack {
                Button("Awesome") {
                    messageString = "You Are Awesome!"
                }
                .buttonStyle(.borderedProminent)
                
                Spacer()
                
                
                
                Button("Great") {
                    messageString = "You Are Great!"
                }
                .buttonStyle(.borderedProminent)
            }
            //            .border(.purple, width: 5)
            .padding()
            .tint(Color("Vermillion"))
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
