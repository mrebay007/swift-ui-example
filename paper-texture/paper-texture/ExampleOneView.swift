//
//  ExampleOneView.swift
//  paper-texture
//
//  Created by Eberhardt Macbook Air on 8/5/24.
//

import SwiftUI

struct ExampleOneView: View {
    @State private var showSharesheet = false
    @State private var showingCredits = false
    
    let backgroundGradient = LinearGradient(
        colors: [Color.mint, Color.blue],
        startPoint: .top, endPoint: .bottom)
    let boxSize = 64.0
    
    var body: some View {
        
        VStack {
            ScrollView(.horizontal) {
                
                HStack {
                    ForEach(0..<10) {_ in
                        ZStack {
                            RoundedRectangle(cornerRadius: 8)
                                .fill(backgroundGradient)
                                .frame(idealWidth: boxSize, maxWidth: boxSize, idealHeight: boxSize, maxHeight: boxSize)
                            Image(systemName: "square.and.arrow.up")
                            
                        }
                        .padding(4)
                    }
                }
                .padding()
            }

            ScrollView {
                Text("Lorem Ipsum Dolor Set")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .fontDesign(.serif)
                    .padding(16)
                
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
                    .font(.system(size: 18.0))
                    .fontDesign(.serif)
                    .lineSpacing(8)
                    .padding(.leading, 24)
                Button("Show Image") {
                    print("Button pressed!")
                    showingCredits.toggle()
                }
                .padding(20)
                .background(Color.black)
                .clipShape(Capsule())
                .foregroundColor(.white)
                .sheet(isPresented: $showingCredits) {
                    VStack {
                        Image(systemName: "fleuron.fill")
                            // .padding()
                            .scaledToFit()
                            .frame(width: 96, height: 96, alignment: .center)
                            .foregroundColor(.white)
                        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut")
                            .font(.system(size: 24.0))
                            .fontDesign(.serif)
                            .lineSpacing(10)
                            .padding(.leading, 24)
                            .foregroundColor(.white)
                    }
                    .presentationDetents([.height(600)])
                    .background(
                        Image("Background-01")
                    )
                }
            }

        }
        
    }
}

#Preview {
    ExampleOneView()
}
