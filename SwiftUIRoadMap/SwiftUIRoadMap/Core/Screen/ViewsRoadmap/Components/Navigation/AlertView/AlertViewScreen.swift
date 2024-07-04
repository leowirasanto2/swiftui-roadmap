//
//  AlertViewScreen.swift
//  SwiftUIRoadMap
//
//  Created by Leo Wirasanto Laia on 04/07/24.
//

import SwiftUI

struct AlertViewScreen: View {
    @State private var isAlertVisible = false
    
    var body: some View {
        VStack {
            Button {
                isAlertVisible = true
            } label: {
                Text("Tap to show alert")
            }
        }
        .alert(isPresented: $isAlertVisible) {
            Alert(
                title: Text("Title"),
                message: Text("Alert message placeholder"),
                dismissButton: .default(Text("Got it"))
            )
        }
    }
}

#Preview {
    AlertViewScreen()
}
