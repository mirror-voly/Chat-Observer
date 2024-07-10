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
        VStack {
            WebView(url: url)
        }
    }
}

struct WebView: UIViewRepresentable {
    
    let url: URL
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        uiView.load(request)
    }
    
}

#Preview {
    ContentView()
}
