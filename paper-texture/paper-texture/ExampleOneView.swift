//
//  ExampleOneView.swift
//  paper-texture
//
//  Created by Eberhardt Macbook Air on 8/5/24.
//

import SwiftUI

struct ExampleOneView: View {
    var body: some View {
        VStack {
            HStack {
                RoundedRectangle(cornerRadius: 8)
                    .fill(Color.gray)
                    .frame(maxWidth: 64, maxHeight: 64)
                RoundedRectangle(cornerRadius: 8)
                    .fill(Gradient(colors: [.pink, .white]))
                    .frame(maxWidth: 64, maxHeight: 64)
                RoundedRectangle(cornerRadius: 8)
                    .fill(Color.gray)
                    .frame(maxWidth: 64, maxHeight: 64)
            }
            
            Text("Lorem Ipsum Dolor Set")
                .font(.largeTitle)
                .fontWeight(.bold)
                .fontDesign(.serif)
                .frame(width: 256)
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
                .font(.system(size: 18.0))
                .fontDesign(.serif)
                .frame(width: 256)
        }
        
    }
}

#Preview {
    ExampleOneView()
}
