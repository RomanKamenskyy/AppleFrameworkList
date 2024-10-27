//
//  FrameworkDetailsView.swift
//  AppleFramework
//
//  Created by roman on 24.06.2024.
//

import SwiftUI

struct FrameworkDetailsView: View {
    
    
    var framework: Framework
    @Binding var isShowingDetailsView: Bool
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack{
            Spacer()
            
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button{
                isShowingSafariView = true
                
            } label: {
                Label("Learn more", systemImage: "book.fill")
            }
        }
        .fullScreenCover(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")! )
        })
    }
}

#Preview {
    FrameworkDetailsView(framework: MockData.sampleFramework, isShowingDetailsView:  .constant(false))
}
