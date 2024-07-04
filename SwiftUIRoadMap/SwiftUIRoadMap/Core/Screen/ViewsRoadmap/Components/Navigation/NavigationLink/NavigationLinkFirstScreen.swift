//
//  FirstScreen.swift
//  SwiftUIRoadMap
//
//  Created by Leo Wirasanto Laia on 03/07/24.
//

import SwiftUI

struct NavigationLinkFirstScreen: View {
    @State var selectedValues: [String] = []
    @State var showNextButton = false
    private var valueOptions = [
        "Hi this is the first option",
        "Thank you for choosing me as the parameter :)",
        "Feel free to tap me",
        "Anything for you",
        "Don't you dare choose me!"
    ]
    
    var body: some View {
        VStack {
            Text("Select at least 2 to navigate")
            
            ForEach(valueOptions, id: \.self) { option in
                Button {
                    if !selectedValues.contains(option) {
                        selectedValues.append(option)
                    } else {
                        if let index = selectedValues.firstIndex(where: { $0 == option }) {
                            selectedValues.remove(at: index)
                        }
                    }
                    
                    withAnimation {
                        showNextButton = selectedValues.count > 1
                    }
                } label: {
                    Text(option)
                        .foregroundStyle(.white)
                        .padding(8)
                        .background(!selectedValues.contains(option) ? .blue : .gray)
                }
                .clipShape(RoundedRectangle(cornerRadius: 10))
            }
            
            if showNextButton {
                NavigationLink(destination: NavigationLinkSecondScreen(passedParameter: selectedValues)) {
                    Text("Continue")
                        .padding(8)
                        .foregroundStyle(.white)
                        .background(.green)
                }
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding(.top, 32)
            }
        }
    }
}

#Preview {
    NavigationLinkFirstScreen()
}