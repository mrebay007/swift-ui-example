//
//  TopicData.swift
//  paper-texture
//
//  Created by Eberhardt Macbook Air on 8/5/24.
//
import SwiftUI

enum Destination: String, CaseIterable {
    case exampleOne
    case exampleTwo
    case exampleThree
    
    @ViewBuilder
    static func view(forSelection selection: Destination) -> some View {
        switch selection {
        case .exampleOne:
            ExampleOneView()
        case .exampleTwo:
            ExampleTwoView()
        case .exampleThree:
            ExampleThreeView()
        }
    }
}

struct TopicData {
    static var homeContent = [
        Topic(
            title: "Top Bar Social Buttons",
            description: "Article post with a top bar Social section",
            systemSymbol: "uiwindow.split.2x1",
            destination: .exampleOne
        ),
        Topic(
            title: "Share Sheet Social Buttons",
            description: "Article with Social Buttons within a Share sheet to interupt the OS sheet",
            systemSymbol: "square.and.arrow.up",
            destination: .exampleTwo
        ),
    ]
}
