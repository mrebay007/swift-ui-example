//
//  paper_textureApp.swift
//  paper-texture
//
//  Created by Eberhardt Macbook Air on 8/4/24.
//

import SwiftUI

@main
struct paper_textureApp: App {
    @State var selection: Topic? = nil
    
    var body: some Scene {
        WindowGroup {
            NavigationSplitView {
                TopicList(contentSource: TopicData.homeContent)
            } detail: {
                Text("Please select a destination")
            }
        }
    }
}
