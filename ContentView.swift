//
//  ContentView.swift
//  DynamicStackViewSDK-Demo
//
//  Created by Filip Vukadinovic on 2/1/25.
//

import SwiftUI

struct ContentView: View {
    private let languages: [Language] = [
        .init(flag: Image(.unitedStates), name: "English"),
        .init(flag: Image(.germany), name: "German"),
        .init(flag: Image(.france), name: "French"),
        .init(flag: Image(.luxembourg), name: "Luxembourgish"),
        .init(flag: Image(.luxembourg), name: "Northern Sotho"),
        .init(flag: Image(.spain), name: "Spanish"),
        .init(flag: Image(.italy), name: "Italian"),
        .init(flag: Image(.portugal), name: "Portuguese"),
        .init(flag: Image(.china), name: "Chinese")
    ]
    
    var body: some View {
        ScrollView {
            content
                .padding(.bottom, 60)
        }
        .background(Color.background)
        .ignoresSafeArea(edges: .top)
        .frame(maxHeight: .infinity, alignment: .top)
    }
    
    private var content: some View {
        VStack {
            Image(.profile)
                .resizable()
                .scaledToFit()
                .frame(maxWidth: UIScreen.main.bounds.width)
                .overlay {
                    LinearGradient(
                        colors: [
                            .clear,
                            Color.black
                        ],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                }
                .overlay(alignment: .top) {
                    HeaderView()
                        .padding(.top, 45)
                        .padding(.horizontal, 18)
                }
                .overlay(alignment: .bottom) {
                    UserInfoView()
                        .padding(.horizontal, 18)
                        .padding(.bottom, 20)
                }
            
            VStack(spacing: 24) {
                LanguagesView(languages: languages)
                AboutView()
            }
            .padding(.horizontal, 18)
        }
    }
}

#Preview {
    ContentView()
}
