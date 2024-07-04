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
        VStack (alignment: .leading, spacing: 16) {
            ForEach(selections, id: \.rawValue) { selectedMenu in
                NavigationLink {
                    switch selectedMenu {
                    case .navigationLink:
                        NavigationLinkFirstScreen()
                    case .navigationBarItems:
                        NavigationBarItemScreen()
                    case .splitView:
                        SplitViewScreen()
                    case .tabView:
                        PageViewScreen()
                    case .tabItem:
                        Text("Soon")
                    case .alert:
                        Text("Soon")
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
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                .padding(.horizontal)
            }
        }
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    NavigationViewScreen()
}
