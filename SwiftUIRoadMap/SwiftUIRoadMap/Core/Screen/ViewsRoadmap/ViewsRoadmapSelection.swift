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
    @State private var selectedComposeViewRoadmap: ViewComposeRoadmap = .unknown
    
    var body: some View {
        NavigationView {
            mainViewSelectionView
        }
        //        VStack {
        //            switch selectedRoadmap {
        //            case .compose:
        //                backToMainMenuButton
        //                viewComposeSelectionView
        //            case .modifier:
        //                backToMainMenuButton
        //                Text("Coming soon")
        //            case .unknown:
        //                mainViewSelectionView
        //            }
        //        }
    }
    
    private var backToMainMenuButton: some View {
        return Button {
            selectedRoadmap = .unknown
            selectedComposeViewRoadmap = .unknown
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
