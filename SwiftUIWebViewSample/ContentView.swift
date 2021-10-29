//
//  ContentView.swift
//  SwiftUIWebViewSample
//
//  Created by naoki-mrnk on 2021/10/29.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties
    @State var urlString = "https://www.apple.com"
    @State var check = true
    // Buttonの中の引数にアクセスするには@Stateが必要
    
    // MARK: - Body
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    print("tapped Button")
                    // ボタンを押したときにTFを反転
                    self.check.toggle()
                    if self.check {
                        self.urlString = "https://www.apple.com"
                    } else {
                        self.urlString = "https://developer.apple.com"
                    }
                }) {
                    Text("Change")
                }
                Text(urlString)
            }
            WebView(url: URL(string: urlString)!)
        }
    }
}
