//
//  ContentView.swift
//  DynamicStackViewSDK-Demo
//
//  Created by Filip Vukadinovic on 2/1/25.
//

import SwiftUI
import DynamicStackViewSDK

struct Language: Identifiable {
    let id: UUID = UUID()
    let flag: Image
    let name: String
}

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
                aboutSection
            }
            .padding(.horizontal, 18)
        }
    }
    
    private var aboutSection: some View {
        VStack(spacing: 24) {
            VStack(alignment: .leading, spacing: 8) {
                Text("About")
                    .font(.system(size: 16))
                    .foregroundStyle(.white)
                
                Text("Lorem ipsum dolor sit amet consectetur. Hendrerit ut ipsum neque quam sed ut massa et enim. Id ut vestibulum donec ac vulputate pulvinar pulvinar nec.")
                    .font(.system(size: 14))
                    .foregroundStyle(.white.opacity(0.5))
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Text("Read More")
                .font(.system(size: 14))
                .foregroundStyle(.white)
                .frame(maxWidth: .infinity, alignment: .center)
        }
        .padding(12)
        .roundedRectangleBackground(
            backgroundColor: .background,
            cornerRadius: 12,
            borderColor: .white,
            borderWidth: 1
        )
    }
}

#Preview {
    ContentView()
}
