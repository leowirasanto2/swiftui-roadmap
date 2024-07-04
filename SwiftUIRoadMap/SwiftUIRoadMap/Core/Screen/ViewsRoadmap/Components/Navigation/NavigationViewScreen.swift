//
//  NavigationViewScreen.swift
//  SwiftUIRoadMap
//
//  Created by Leo Wirasanto Laia on 03/07/24.
//

import SwiftUI

struct NavigationViewScreen: View {
    private var selections = NavigationRoadmap.allCases
    @State var selected: NavigationRoadmap?
    
    var body: some View {
        VStack(spacing: 16) {
            ForEach(selections, id: \.rawValue) { selectedMenu in
                NavigationLink {
                    switch selectedMenu {
                    case .navigationLink:
                        NavigationLinkFirstScreen()
                    case .navigationBarItems:
                        NavigationBarItemScreen()
                    case .splitView:
                        SplitViewScreen()
                    case .pageView:
                        PageViewScreen()
                    case .tabView:
                        TabViewScreen()
                    case .tabItem:
                        TabViewScreen()
                    case .alert:
                        AlertViewScreen()
                    case .sheet:
                        Text("Soon")
                    case .actionSheet:
                        Text("Soon")
                    case .popOver:
                        Text("Soon")
                    case .modalView:
                        Text("Soon")
                    case .contextMenu:
                        Text("Soon")
                    }
                } label: {
                    Text(selectedMenu.description)
                        .padding(8)
                        .foregroundStyle(.white)
                        .background(.orange)
                        .fontWeight(.bold)
                }
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding(.horizontal)
            }
        }
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    NavigationStack {
        NavigationViewScreen()
    }
}
