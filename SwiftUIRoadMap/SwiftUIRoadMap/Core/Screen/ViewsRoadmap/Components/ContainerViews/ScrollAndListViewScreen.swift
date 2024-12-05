//
//  ScrollAndListViewScreen.swift
//  SwiftUIRoadMap
//
//  Created by Leo Wirasanto Laia on 22/07/24.
//

import SwiftUI

struct ScrollAndListViewScreen: View {
    private var styles: [String] = ListViewStyle.allCases.map { $0.rawValue }
    private var viewTypes = ["ScrollView", "ListView"]
    private var scrollAxis: [Axis.Set] = [.vertical, .horizontal]
    @State private var selectedViewType = "ScrollView"
    @State private var showScrollViewIndicator = true
    @State private var scrollViewAxis: Axis.Set = .vertical
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
            Menu("Select View Type") {
                ForEach(viewTypes, id: \.self) { item in
                    Button {
                        selectedViewType = item
                    } label: {
                        Text(item == selectedViewType ? "◼️ \(item)" : item)
                    }
                }
            }.padding(.horizontal)
            
            Menu("Select scroll axis: \(scrollViewAxis == .vertical ? "Vertical" : "Horizontal")") {
                ForEach(scrollAxis, id: \.rawValue) { item in
                    Button {
                        scrollViewAxis = item
                    } label: {
                        Text(item == .horizontal ? "Horizontal" : "Vertical")
                    }
                }
            }.padding(.horizontal)
            
            Toggle("Show indicator", isOn: $showScrollViewIndicator).padding(.horizontal)
            
            if selectedViewType == "ScrollView" {
                // MARK: - ScrollView
                ScrollView(scrollViewAxis, showsIndicators: showScrollViewIndicator) {
                    if scrollViewAxis == .horizontal {
                        HStack(alignment: .center, spacing: 16) {
                            ForEach(dataList, id: \.id) { section in
                                Text(section.title)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                ForEach(section.items, id: \.id) { item in
                                    Text(item.text)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .padding(.leading)
                                }
                            }
                        }
                        .padding()
                    } else {
                        VStack(alignment: .leading, spacing: 16) {
                            ForEach(dataList, id: \.id) { section in
                                Text(section.title)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                ForEach(section.items, id: \.id) { item in
                                    Text(item.text)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .padding(.leading)
                                }
                            }
                        }
                        .padding()
                    }
                }
            } else {
                // MARK: - ListView
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
                        contentListView
                            .listStyle(SidebarListStyle())
                    case .inset:
                        contentListView
                            .listStyle(InsetListStyle())
                    case .insetGrouped:
                        contentListView
                            .listStyle(InsetGroupedListStyle())
                    case .plain:
                        contentListView
                            .listStyle(PlainListStyle())
                    default:
                        contentListView
                            .listStyle(GroupedListStyle())
                    }
                }
            }
        }
    }
    
    var contentListView: some View {
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
