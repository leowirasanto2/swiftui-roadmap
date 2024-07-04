//
//  NavigationBarItemScreen.swift
//  SwiftUIRoadMap
//
//  Created by Leo Wirasanto Laia on 04/07/24.
//

import SwiftUI

struct NavigationBarItemScreen: View {
    @State private var isShadowApplied = false
    
    var body: some View {
        VStack {
            Text("""
Hi! You can see the bar item on the top of this screen.
Based on apple documentation `.navigationBarItems` is deprecated and replaced by `.toolbar`.
Hence in this screen we are using `.toolbar` while the screen name is still `navigationBarItems`.
""")
            .font(.caption)
            .padding()
            .shadow(radius: isShadowApplied ? 10 : 0)
        }
        .navigationTitle(isShadowApplied ? "With Shadow" : "Without Shadow")
        .toolbar {
            Button {
                isShadowApplied.toggle()
            } label: {
                Image(systemName: isShadowApplied ? "circle.lefthalf.filled.righthalf.striped.horizontal" : "circle.lefthalf.filled.righthalf.striped.horizontal.inverse")
                    .foregroundStyle(.black)
            }
        }
    }
}

#Preview {
    NavigationStack {
        NavigationBarItemScreen()
    }
}
