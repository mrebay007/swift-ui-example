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
            systemSymbol: "gauge.with.dots.needle.67percent",
            destination: .exampleOne
        ),
        Topic(
            title: "Basic Animation",
            description: "See an example of a basic animation.",
            systemSymbol: "heart.text.square",
            destination: .exampleTwo
        ),
        Topic(
            title: "Spinning Animation",
            description: "View a basic shape spinning on its x axis.",
            systemSymbol: "waveform.path.ecg",
            destination: .exampleThree
        ),
    ]
}
