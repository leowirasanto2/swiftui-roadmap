//
//  ContexMenuScreen.swift
//  SwiftUIRoadMap
//
//  Created by Leo Wirasanto Laia on 04/07/24.
//

import SwiftUI

struct ContexMenuScreen: View {
    var body: some View {
        VStack {
            Text("Tap and hold this to show context menu")
                .padding()
                .underline()
                .contextMenu(ContextMenu(menuItems: {
                    Text("Menu Item 1")
                    Text("Menu Item 2")
                    Text("Menu Item 3")
                }))
        }
    }
}

#Preview {
    ContexMenuScreen()
}
