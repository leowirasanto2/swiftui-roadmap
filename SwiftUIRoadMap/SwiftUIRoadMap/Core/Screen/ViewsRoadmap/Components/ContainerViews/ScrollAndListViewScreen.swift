//
//  ScrollAndListViewScreen.swift
//  SwiftUIRoadMap
//
//  Created by Leo Wirasanto Laia on 22/07/24.
//

import SwiftUI

struct ScrollAndListViewScreen: View {
    private var styles: [String] = ListViewStyle.allCases.map { $0.rawValue }
    @State private var selectedStyle = ListViewStyle.grouped.rawValue
    @State private var dataList: [ListData] = [
        ListData(
            title: "Sports",
            items: [
                ListDataItem(text: "🏈"),
                ListDataItem(text: "🏀"),
                ListDataItem(text: "🥎"),
                ListDataItem(text: "⚽️")
            ]
        ),
        ListData(
            title: "Art",
            items: [
                ListDataItem(text: "🎨"),
                ListDataItem(text: "🎶"),
                ListDataItem(text: "🎸"),
                ListDataItem(text: "🥁")
            ]
        )
    ]
    
    var body: some View {
        VStack(alignment: .leading) {
            Menu("Select List Style") {
                ForEach(styles, id: \.self) { item in
                    Button {
                        selectedStyle = item
                    } label: {
                        Text(item == selectedStyle ? "◼️ \(item)" : item)
                    }
                }
            }.padding()
            
            switch ListViewStyle(rawValue: selectedStyle) {
            case .sidebar:
                contentView
                    .listStyle(SidebarListStyle())
            case .inset:
                contentView
                    .listStyle(InsetListStyle())
            case .insetGrouped:
                contentView
                    .listStyle(InsetGroupedListStyle())
            case .plain:
                contentView
                    .listStyle(PlainListStyle())
            default:
                contentView
                    .listStyle(GroupedListStyle())
            }
        }
    }
    
    var contentView: some View {
        return List {
            ForEach(dataList, id: \.id) { section in
                Section(section.title) {
                    ForEach(section.items, id: \.id) { section in
                        Text(section.text)
                    }
                }
            }
        }
    }
}

#Preview {
    ScrollAndListViewScreen()
}

struct ListData {
    var id = UUID().uuidString
    var title: String
    var items: [ListDataItem] = []
}

struct ListDataItem {
    var id = UUID().uuidString
    var text: String
}

enum ListViewStyle: String, CaseIterable {
    case sidebar = "Sidebar"
    case inset = "Inset"
    case insetGrouped = "Inset Grouped"
    case plain = "Plain"
    case grouped = "Grouped"
}
