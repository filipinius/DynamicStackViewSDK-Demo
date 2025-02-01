//
//  LanguagesView.swift
//  DynamicStackViewSDK-Demo
//
//  Created by Filip Vukadinovic on 2/1/25.
//

import SwiftUI
import DynamicStackViewSDK

struct LanguagesView: View {
    private let languages: [Language]
    
    init(languages: [Language]) {
        self.languages = languages
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Languages")
                .font(.system(size: 14))
                .foregroundStyle(.white)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            DynamicStackView(
                data: languages,
                spacing: 10,
                content: { language in
                    languageLabel(language)
                }
            )
            .dynamicAlignment(.leading)
            .rowSpacing(10)
        }
    }
    
    private func languageLabel(_ language: Language) -> some View {
        HStack(spacing: 8) {
            language.flag
                .resizable()
                .scaledToFill()
                .frame(width: 24, height: 16)
                .cornerRadius(4)
            
            Text(language.name)
                .font(.system(size: 12))
                .foregroundStyle(.white)
                .fixedSize(horizontal: true, vertical: false)
        }
        .padding(.vertical, 5)
        .padding(.horizontal, 12)
        .background(
            RoundedRectangle(cornerRadius: 4)
                .fill(Color.componentBackground.opacity(0.7))
        )
    }
}

#Preview {
    LanguagesView(
        languages: [.init(
            flag: Image(.unitedStates),
            name: "English"
        )]
    )
}
