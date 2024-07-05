//
//  ViewsRoadmapSelection.swift
//  SwiftUIRoadMap
//
//  Created by Leo Wirasanto Laia on 03/07/24.
//

import SwiftUI

struct ViewsRoadmapSelection: View {
    private var roadMap = ViewsRoadmap.allCases
    private var composeRoadmap = ViewComposeRoadmap.allCases
    
    var body: some View {
        mainViewSelectionView
    }
    
    private var mainViewSelectionView: some View {
        return VStack {
            ForEach(roadMap, id: \.rawValue) { item in
                if item == .unknown {
                    AnyView(EmptyView())
                } else {
                    NavigationLink {
                        switch item {
                        case .compose:
                            viewComposeSelectionView
                        case .modifier:
                            Text("Coming soon")
                        case .unknown:
                            AnyView(EmptyView())
                        }
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
        }
    }
    
    private var viewComposeSelectionView: some View {
        return VStack {
            ForEach(composeRoadmap, id: \.hashValue) { item in
                if item == .unknown {
                    AnyView(EmptyView())
                } else {
                    NavigationLink {
                        switch item {
                        case .navigation:
                            NavigationViewScreen()
                        case .containerViews:
                            Text("Coming soon")
                        case .layoutSystem:
                            Text("Coming soon")
                        case .unknown:
                            AnyView(EmptyView())
                        }
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
        }
    }
}

#Preview {
    ViewsRoadmapSelection()
}
