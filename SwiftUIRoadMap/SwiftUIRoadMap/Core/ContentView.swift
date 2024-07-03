//
//  ContentView.swift
//  SwiftUIRoadMap
//
//  Created by Leo Wirasanto Laia on 03/07/24.
//

import SwiftUI

struct ContentView: View {
    private var roadMap = Roadmap.allCases
    @State private var path: [Roadmap] = []
    
    var body: some View {
        NavigationStack(path: $path) {
            VStack {
                Text("Choose Roadmap:")
                
                ForEach(roadMap, id: \.rawValue) { item in
                    Button {
                        path = [item]
                    } label: {
                        Text(item.description)
                            .padding(8)
                            .foregroundStyle(.white)
                            .background(.orange)
                            .fontWeight(.bold)
                    }
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                }
            }
            .padding()
            .navigationDestination(for: Roadmap.self) { selected in
                switch selected {
                case .views:
                    ViewsRoadmapSelection()
                default:
                    Text("Coming soon")
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
