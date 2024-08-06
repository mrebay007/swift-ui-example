//
//  ExampleTwoView.swift
//  paper-texture
//
//  Created by Eberhardt Macbook Air on 8/5/24.
//

import SwiftUI

let backgroundGradient = LinearGradient(
    colors: [Color.red, Color.blue],
    startPoint: .top, endPoint: .bottom)
let backgroundImage = Image("Background-01")

struct ExampleTwoView: View {
    
    var body: some View {
        ZStack {
            backgroundImage
            VStack {
                HStack {
                    RoundedRectangle(cornerRadius: 8)
                        .fill(Color.black)
                        .frame(maxWidth: 64, maxHeight: 64)
                    RoundedRectangle(cornerRadius: 8)
                        .fill(Gradient(colors: [.orange, .red]))
                        .frame(maxWidth: 64, maxHeight: 64)
                    RoundedRectangle(cornerRadius: 8)
                        .fill(Gradient(colors: [.green, .blue]))
                        .frame(maxWidth: 64, maxHeight: 64)
                    RoundedRectangle(cornerRadius: 8)
                        .fill(Color.black)
                        .frame(maxWidth: 64, maxHeight: 64)
                }
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ExampleTwoView()
}
