//
//  ContentView.swift
//  Chat Observer
//
//  Created by mix on 10.07.2024.
//

import SwiftUI
import WebKit

struct ContentView: View {
    
    private let url = URL(string: "https://duckduckgo.com/?t=h_&q=_&ia=chat")!
    
    var body: some View {
        VStack(content: {
            WebView(url: url).ignoresSafeArea()
        })
    }
}


#Preview {
    ContentView()
}
