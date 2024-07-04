//
//  TabViewScreen.swift
//  SwiftUIRoadMap
//
//  Created by Leo Wirasanto Laia on 04/07/24.
//

import SwiftUI

struct TabViewScreen: View {
    @State var index = 0
    @State var index3Counter = 4
    
    var body: some View {
        TabView(selection: $index) {
            Text("1")
                .tabItem {
                    Image(systemName: "1.lane")
                }
                .tag(0)
            Text("2")
                .tabItem {
                    Image(systemName: "2.lane")
                }
                .tag(1)
            Text("3")
                .tabItem {
                    Image(systemName: "3.lane")
                }
                .badge(index3Counter)
                .tag(2)
        }
        .onChange(of: index) { oldValue, newValue in
            if newValue == 2 && index3Counter > 0 {
                index3Counter -= 1
            }
        }
    }
}

#Preview {
    TabViewScreen()
}
