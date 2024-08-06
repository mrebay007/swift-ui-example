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
        colors: [Color.red, Color.blue],
        startPoint: .top, endPoint: .bottom)
    
    var body: some View {
        
        VStack {
            HStack {
                RoundedRectangle(cornerRadius: 8)
                    .fill(Color.gray)
                    .frame(maxWidth: 64, maxHeight: 64)
                RoundedRectangle(cornerRadius: 8)
                    .fill(Gradient(colors: [.orange, .red]))
                    .frame(maxWidth: 64, maxHeight: 64)
                RoundedRectangle(cornerRadius: 8)
                    .fill(Gradient(colors: [.green, .blue]))
                    .frame(maxWidth: 64, maxHeight: 64)
                RoundedRectangle(cornerRadius: 8)
                    .fill(Color.gray)
                    .frame(maxWidth: 64, maxHeight: 64)
            }
            ScrollView {
                HStack {
                    Button("Show Square") {
                        print("Button tapped!")
                        showSharesheet.toggle()
                    }
                    if showSharesheet {
                        RoundedRectangle(cornerRadius: 8)
                            .fill(Color.gray)
                            .frame(maxWidth: 64, maxHeight: 64)
                    }
                    
                    Button("Press Me") {
                        print("Button pressed!")
                        showingCredits.toggle()
                    }
                    .padding(16)
                    .background(Color.black)
                    .clipShape(Capsule())
                    .sheet(isPresented: $showingCredits) {
                        Text("This app was brought to you by Hacking with Swift")
                            .presentationDetents([.height(600)])
                    }

                }
                Text("Lorem Ipsum Dolor Set")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .fontDesign(.serif)
                    .padding(.leading, 16)
                    // .foregroundStyle(.white)
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
                    .font(.system(size: 18.0))
                    .fontDesign(.serif)
                    .padding(.leading, 20)
                    // .foregroundStyle(.white)
                
//                .background(Image("Background-01"))
//
//                Image("Background-01")
//                    .resizable()
//                    .edgesIgnoringSafeArea(.all)
//                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                

            }

        }
        
    }
}

#Preview {
    ExampleOneView()
}
