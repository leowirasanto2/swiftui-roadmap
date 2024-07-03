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
    @State private var selectedRoadmap: ViewsRoadmap = .unknown
    
    var body: some View {
        VStack {
            switch selectedRoadmap {
            case .compose:
                backToMainMenuButton
                viewComposeSelectionView
            case .modifier:
                backToMainMenuButton
                Text("Coming soon")
            case .unknown:
                mainViewSelectionView
            }
        }
    }
    
    private var backToMainMenuButton: some View {
        return Button {
            selectedRoadmap = .unknown
        } label: {
            HStack(alignment: .center) {
                Image(systemName: "arrow.left.circle")
                Text("Back")
            }
        }
        .padding()
    }
    
    private var mainViewSelectionView: some View {
        return VStack {
            ForEach(roadMap, id: \.rawValue) { item in
                if item == .unknown {
                    AnyView(EmptyView())
                } else {
                    Button {
                        switch item {
                        case .compose:
                            selectedRoadmap = .compose
                        case .modifier:
                            selectedRoadmap = .modifier
                        case .unknown:
                            selectedRoadmap = .unknown
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
                    Button {
                        switch item {
                        case .navigation:
                            break
                        case .containerViews:
                            break
                        case .layoutSystem:
                            break
                        case .unknown:
                            break
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