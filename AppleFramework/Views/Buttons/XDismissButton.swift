//
//  XDismissButton.swift
//  AppleFramework
//
//  Created by roman on 24.06.2024.
//

import SwiftUI

struct XDismissButton: View {
    
    @Binding var isShowingDetailsView: Bool
    
    var body: some View {
        
        HStack {
            Spacer()
            
            Button{
                isShowingDetailsView = false
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
            }
        }
        .padding()
    }
}

#Preview {
    XDismissButton(isShowingDetailsView: .constant(false))
}
