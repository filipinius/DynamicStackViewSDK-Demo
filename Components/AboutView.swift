//
//  AboutView.swift
//  DynamicStackViewSDK-Demo
//
//  Created by Filip Vukadinovic on 2/2/25.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
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
    AboutView()
}
