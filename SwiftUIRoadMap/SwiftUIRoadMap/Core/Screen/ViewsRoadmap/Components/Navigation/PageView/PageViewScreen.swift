//
//  PageViewScreen.swift
//  SwiftUIRoadMap
//
//  Created by Leo Wirasanto Laia on 04/07/24.
//

import SwiftUI

struct PageViewScreen: View {
    @State var pageData: [PageViewData] = PageViewData.sampleData1
    
    var body: some View {
        TabView {
            ForEach(pageData, id: \.id) { item in
                Text(item.text)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(item.color)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
        }
        .tabViewStyle(.page(indexDisplayMode: .always))
        .indexViewStyle(.page(backgroundDisplayMode: .always))
        .shadow(radius: 10)
        .padding()
    }
}

#Preview {
    PageViewScreen()
}


struct PageViewData {
    var id = UUID().uuidString
    var text: String
    var color: Color
}


extension PageViewData {
    static var sampleData1: [PageViewData] = [
        .init(text: "Page 1", color: .red),
        .init(text: "Page 2", color: .green),
        .init(text: "Page 3", color: .brown)
    ]
}
