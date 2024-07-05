//
//  StackViewScreen.swift
//  SwiftUIRoadMap
//
//  Created by Leo Wirasanto Laia on 05/07/24.
//

import SwiftUI

struct StackViewScreen: View {
    @State private var data: [String] = [
        "🔈 Music",
        "🏀 Sport",
        "🎨 Art"
    ]
    
    var body: some View {
        Text("VStack")
            .font(.headline)
            .fontWeight(.bold)
        
        VStack {
            ForEach(data, id: \.self) { i in
                Text(i)
            }
        }
        .padding(.bottom)
        
        
        Text("HStack")
            .font(.headline)
            .fontWeight(.bold)
        
        HStack {
            ForEach(data, id: \.self) { i in
                Text(i)
            }
        }
        .padding(.bottom)
        
        Text("ZStack")
            .font(.headline)
            .fontWeight(.bold)
        
        ZStack {
            ForEach(data, id: \.self) { i in
                Text(i)
            }
        }
        .padding(.bottom)
    }
}

#Preview {
    StackViewScreen()
}
