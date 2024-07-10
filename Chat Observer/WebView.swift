//
//  WebView.swift
//  Chat Observer
//
//  Created by mix on 10.07.2024.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    
    let url: URL
    
    internal func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    internal func updateUIView(_ uiView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        uiView.load(request)
    }
    
    
}
