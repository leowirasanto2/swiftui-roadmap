//
//  ContentView.swift
//  SwiftUIRoadMap
//
//  Created by Leo Wirasanto Laia on 03/07/24.
//

import SwiftUI

struct ContentView: View {
    private var roadMap = Roadmap.allCases
    
    var body: some View {
        VStack {
            Text("Choose Roadmap:")
            
            ForEach(roadMap, id: \.rawValue) { item in
                Button {
                    
                } label: {
                    Text(item.description)
                }
                .padding(8)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
