//
//  SecondScreen.swift
//  SwiftUIRoadMap
//
//  Created by Leo Wirasanto Laia on 03/07/24.
//

import SwiftUI

struct SecondScreen: View {
    var passedParameter: [String] = []
    
    var body: some View {
        VStack {
            Text("You passed these values:")
            VStack(alignment: .leading) {
                ForEach(passedParameter, id: \.self) { item in
                    Text("◾️ \(item)")
                }
            }
        }
    }
}

#Preview {
    SecondScreen(passedParameter: ["a", "b", "c"])
}
