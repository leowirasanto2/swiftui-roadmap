//
//  NavigationViewScreen.swift
//  SwiftUIRoadMap
//
//  Created by Leo Wirasanto Laia on 03/07/24.
//

import SwiftUI

struct NavigationViewScreen: View {
    var body: some View {
        VStack (spacing: 16) {
            Text("Hi! This is the navigation sample in SwiftUI")
                .font(.headline)
            
            FirstScreen()
        }
    }
}

#Preview {
    NavigationViewScreen()
}
