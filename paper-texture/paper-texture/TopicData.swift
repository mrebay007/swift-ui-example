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
            title: "Basic Shapes",
            description: "Experiment with different shape types.",
            systemSymbol: "square.on.circle",
            destination: .exampleOne
        ),
        Topic(
            title: "Basic Animation",
            description: "See an example of a basic animation.",
            systemSymbol: "heart",
            destination: .exampleTwo
        ),
        Topic(
            title: "Spinning Animation",
            description: "View a basic shape spinning on its x axis.",
            systemSymbol: "arrow.left.arrow.right.circle",
            destination: .exampleThree
        ),
    ]
}
