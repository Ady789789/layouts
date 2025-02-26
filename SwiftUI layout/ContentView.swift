//
//  ContentView.swift
//  SwiftUI layout
//
//  Created by ADY M on 2/13/25.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = "When the Genius Bar Needs Help, They Call You! "
    
    var body: some View {
    
            
            VStack {
                Text("Awesome!")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .foregroundStyle(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.indigo)
                Spacer()
                Text(messageString)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.red)
                    .frame(height: 150)
                    .frame(maxWidth: .infinity)
                    .border(.orange, width: 2)
                    .padding()
                Spacer()
            
                
                HStack {
                    
                    Button ("Awesome") {
                        messageString = "You Are Awesome!"
                    }
                    Spacer()
                    Button ("Great") {
                        messageString = "You Are Great!"
                    }
                }
                .buttonStyle(.borderedProminent)
                //            .border(.purple, width: 5)
                .padding()
                .tint(.vermilian)
                Rectangle()
                    .frame(height: 0)
                    .background(.indigo)
            }
//            .background(.orange.gradient.opacity(0.2))
            .background(Gradient(colors: [.pink, .purple, .skyblue]))
            
        }
    }

    
    #Preview {
        ContentView()
    }

