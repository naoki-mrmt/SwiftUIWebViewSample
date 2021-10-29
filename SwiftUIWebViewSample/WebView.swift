//
//  WebView.swift
//  SwiftUIWebViewSample
//
//  Created by naoki-mrnk on 2021/10/29.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    
//    typealias UIViewType = WKWebView
    var url: URL
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        uiView.load(request)
    }
}
