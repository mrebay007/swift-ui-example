//
//  ContentView.swift
//  paper-texture
//
//  Created by Eberhardt Macbook Air on 8/4/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Color.gray
            
            HStack {
                Color.mint
                Image(systemName: "sun.haze.fill")
                    .imageScale(/*@START_MENU_TOKEN@*/.medium/*@END_MENU_TOKEN@*/)
                    .foregroundStyle(.red)
                    .padding(8)
                
                Text("Hello, world!")
                    .padding(8)
            }

            Spacer(minLength: 64)
            Divider()
            Image(systemName: "sun.haze.fill")
                .imageScale(/*@START_MENU_TOKEN@*/.medium/*@END_MENU_TOKEN@*/)
                .foregroundStyle(.black)
                .padding(8)
            
            Text("Lorem Ipsum")
                .fontWeight(.bold)
                .fontDesign(.serif)
                .frame(width: 300)
        }
        .padding(24)
    }
}

#Preview {
    ContentView()
}
