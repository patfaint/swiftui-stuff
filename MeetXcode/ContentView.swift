//
//  ContentView.swift
//  MeetXcode
//
//  Created by Pat Faint on 12/9/2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 25) {
            Text("Knock, knock!")
                .padding()
                .background(Color.yellow, in: RoundedRectangle(cornerRadius: 8))
                .shadow(radius: 8)
            Text("Who's there?")
                .padding()
                .background(Color.teal, in: RoundedRectangle(cornerRadius: 8))
            textBubble(textMessage: "Cryin...", boxColor: Color.cyan, hasShadow: true)
        }
        HStack(spacing: 25) {
            Text("Hello")
                .padding()
                .background(Color.indigo, in: RoundedRectangle(cornerRadius: 8))
            Text("World")
                .padding()
                .background(Color.mint, in: RoundedRectangle(cornerRadius: 8))
                .shadow(radius: 8)
            textBubble(textMessage: "Test", boxColor: Color.green, hasShadow: true)
        }
        .padding()
    }
}

struct textBubble: View {
    let textMessage: String
    let boxColor: Color
    let hasShadow: Bool
    
    var boxShadow: Int {
        if hasShadow {
            return 8
        } else {
            return 0
        }
    }
    
    var body: some View {
        Text(textMessage)
            .padding()
            .background(boxColor, in: RoundedRectangle(cornerRadius: 8))
            .shadow(radius: CGFloat(boxShadow))
    }
}

#Preview {
    ContentView()
}

