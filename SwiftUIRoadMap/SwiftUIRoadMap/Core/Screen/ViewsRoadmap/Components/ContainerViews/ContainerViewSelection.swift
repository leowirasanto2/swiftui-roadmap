//
//  ContainerViewSelection.swift
//  SwiftUIRoadMap
//
//  Created by Leo Wirasanto Laia on 22/07/24.
//

import SwiftUI

struct ContainerViewSelection: View {
    private var selections = ContainerViewRoadmap.allCases
    @State var selected: ContainerViewRoadmap?
    
    var body: some View {
        VStack(spacing: 16) {
            ForEach(selections, id: \.rawValue) { selectedMenu in
                NavigationLink {
                    switch selectedMenu {
                    case .stackView:
                        StackViewScreen()
                    case .groupView:
                        GroupViewScreen()
                    case .scrollAndListView:
                        ScrollAndListViewScreen()
                    case .gridView:
                        GridViewScreen()
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
        ContainerViewSelection()
    }
}
