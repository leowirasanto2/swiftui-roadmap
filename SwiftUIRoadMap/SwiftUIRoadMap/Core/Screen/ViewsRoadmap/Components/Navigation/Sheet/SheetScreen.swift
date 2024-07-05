//
//  SheetScreen.swift
//  SwiftUIRoadMap
//
//  Created by Leo Wirasanto Laia on 04/07/24.
//

import SwiftUI

struct SheetScreen: View {
    @State private var isSheetShown = false
    @State private var isActionSheetShown = false
    
    @State private var sheetHeight: CGFloat = 100
    @State private var selectedColor: Color = .blue
    
    var body: some View {
        VStack(spacing: 16) {
            
            Button {
                isSheetShown = true
            } label: {
                Text("Sheet")
            }
            
            Button {
                isActionSheetShown = true
            } label: {
                Text("Action sheet")
                    .foregroundStyle(selectedColor)
            }
        }
        .sheet(isPresented: $isSheetShown) {
            VStack(alignment: .leading) {
                Spacer()
                HStack {
                    Slider(value: $sheetHeight, in: 100...800)
                    Text("Sheet height: \(String(format: "%.1f", sheetHeight))")
                }
                
                Text("This is the content of sheet with custom height")
                    .presentationDetents([.height(sheetHeight)])
            }
            .padding()
            .background(.brown.opacity(0.7))
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .padding()
        }
        .confirmationDialog("Confirmation dialog", isPresented: $isActionSheetShown) {
            Button("Blue") {
                withAnimation {
                    selectedColor = .blue
                }
            }
            
            Button("Green") {
                withAnimation {
                    selectedColor = .green
                }
            }
            
            Button("Orange") {
                withAnimation {
                    selectedColor = .orange
                }
            }
        }
    }
}

#Preview {
    SheetScreen()
}
