//
//  UserInfoView.swift
//  DynamicStackViewSDK-Demo
//
//  Created by Filip Vukadinovic on 2/1/25.
//

import SwiftUI

struct UserInfoView: View {
    var body: some View {
        VStack(spacing: 10) {
            HStack {
                Text("Filip Vukadinović")
                    .font(.system(size: 20))
                    .foregroundStyle(.white)
                
                Spacer()
                
                Text("Serbia")
                    .font(.system(size: 14))
                    .foregroundStyle(Color.white.opacity(0.5))
            }
        }
    }
}

#Preview {
    UserInfoView()
}
