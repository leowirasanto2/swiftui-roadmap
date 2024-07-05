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
        NavigationStack {
            VStack {
                Text("Choose Roadmap:")
                
                ForEach(roadMap, id: \.rawValue) { selected in
                    NavigationLink {
                        switch selected {
                        case .views:
                            ViewsRoadmapSelection()
                        default:
                            Text("Coming soon")
                        }
                    } label: {
                        Text(selected.description)
                            .padding(8)
                            .foregroundStyle(.white)
                            .background(.orange)
                            .fontWeight(.bold)
                    }
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
