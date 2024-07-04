//
//  PopOverView.swift
//  SwiftUIRoadMap
//
//  Created by Leo Wirasanto Laia on 04/07/24.
//

import SwiftUI

struct PopOverScreen: View {
    @State private var isPopOverShown = false
    
    var body: some View {
        VStack {
            Button("Show pop over view") {
                isPopOverShown = true
            }
        }
        .popover(isPresented: $isPopOverShown) {
            Text("Hei! This is the pop over view")
        }
    }
}

#Preview {
    PopOverScreen()
}
