//
//  ContentView.swift
//  paper-texture
//
//  Created by Eberhardt Macbook Air on 8/4/24.
//

import SwiftUI

struct TopicList: View {
    var contentSource: [Topic]
    
    var body: some View {
        Section {
            List {
                ForEach(contentSource) { row in
                    NavigationLink(
                        destination: Destination.view(forSelection: row.destination), label: {
                            TopicRowView(title: row.title, description: row.description, systemIcon: row.systemSymbol)
                        })
                        .fixedSize(horizontal: false, vertical: true)
                        .listRowInsets(.init(top: 16, leading: 16, bottom: 16, trailing: 16))
                    
                }
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Select An Example")
            
        }
        .safeAreaInset(edge: .top, spacing: 0) {
            Color.clear.frame(height: 16)
        }
    }
    
}

struct TopicList_Previews: PreviewProvider {
    static var previews: some View {
        TopicList(contentSource: TopicData.homeContent)
    }
}
