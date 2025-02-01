//
//  HeaderView.swift
//  DynamicStackViewSDK-Demo
//
//  Created by Filip Vukadinovic on 2/1/25.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack(spacing: 12) {
            Button(
                action: {
                    
                },
                label: {
                    HStack(spacing: 10) {
                        Image(systemName: "arrow.left")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 15, height: 15)
                            .foregroundStyle(.white)
                        
                        Text("Profile")
                            .font(.system(size: 20))
                            .foregroundStyle(.white)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                })
        }
        .frame(height: 64)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    HeaderView()
}
