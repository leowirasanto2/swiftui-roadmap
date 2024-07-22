//
//  GroupViewScreen.swift
//  SwiftUIRoadMap
//
//  Created by Leo Wirasanto Laia on 22/07/24.
//

import SwiftUI

struct GroupViewScreen: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 24) {
            VStack(alignment: .leading, spacing: 16) {
                Text("Hi! This is what the group be like")
                    .font(.subheadline)
                Text("So, there are three text component below 'text 1', 'text 2' and 'text 3). The first and second text are in the same group and the 3rd text is on its own (not grouped). If we set the foregroundStyle to the group, then its child should be affected as well. In this example, we'll set the font weight as bold to all of them, but we set .green for the foregroundStyle to the group.")
                    .font(.caption)
            }
            
            Group {
                Text("text 1")
                Text("text 2")
            }
            .fontWeight(.bold)
            .foregroundStyle(.green)
            
            Text("text 3")
                .fontWeight(.bold)
        }
        .padding()
    }
}

#Preview {
    GroupViewScreen()
}
