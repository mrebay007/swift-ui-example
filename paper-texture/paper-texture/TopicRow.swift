/*
See the License.txt file for this sample’s licensing information.
*/

import SwiftUI

struct TopicRowView: View {
    var title : String
    var description: String
    var systemIcon : String
    
    var body: some View {
        HStack {
            Image(systemName: systemIcon)
                .font(.title2)
                .foregroundColor(.accentColor)
                .frame(minWidth: 32, minHeight: 16)
                .padding(.trailing, 4)
            VStack(alignment: .leading, spacing: 0) {
                Text(title)
                    .font(Font.system(size: 20.0, weight: .semibold, design: .default))
                    .padding(.bottom, 4)
                Text(description)
                    .font(.body)
                    .foregroundColor(.gray)
            }
        }
        .frame(minHeight: 60)
    }
}

struct TopicRowView_Previews: PreviewProvider {
    static var previews: some View {
        TopicRowView(title: "Placeholder Title", description: "Placeholder Text", systemIcon: "circle.fill")
    }
}
