//
//  SplitViewScreen.swift
//  SwiftUIRoadMap
//
//  Created by Leo Wirasanto Laia on 04/07/24.
//

import SwiftUI

struct SplitViewScreen: View {
    @State private var firstData: DataModel?
    @State private var secondData: DataModel?
    @State private var lastData: DataModel?
    
    var body: some View {
        VStack(alignment: .leading, spacing: -4) {
            Text("Navigation Split View Container")
                .font(.caption)
                .padding(.horizontal)
            NavigationSplitView {
                List(SampleData.firstScreenData, selection: $firstData) { item in
                    NavigationLink(item.text, value: item)
                }
            } content: {
                List(SampleData.secondScreenData, selection: $secondData) { item in
                    NavigationLink(item.text, value: item)
                }
                .navigationTitle(firstData?.text ?? "Second Screen")
            } detail: {
                List(SampleData.lastScreenData, selection: $lastData) { item in
                    NavigationLink(item.text, value: item)
                }
            }
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .shadow(radius: 8)
            .padding()
        }
    }
}

#Preview {
    SplitViewScreen()
}

// Reference from https://medium.com/@jpmtech/swiftui-navigationsplitview-30ce87b5de03
import Foundation

struct DataModel: Identifiable, Hashable {
    let id = UUID()
    let text: String
}

class SampleData {
    static let firstScreenData = [
        DataModel(text: "🚂 Trains"),
        DataModel(text: "✈️ Planes"),
        DataModel(text: "🚗 Automobiles"),
    ]
    
    static let secondScreenData = [
        DataModel(text: "Slow"),
        DataModel(text: "Regular"),
        DataModel(text: "Fast"),
    ]
    
    static let lastScreenData = [
        DataModel(text: "Wrong"),
        DataModel(text: "So-so"),
        DataModel(text: "Right"),
    ]
}
