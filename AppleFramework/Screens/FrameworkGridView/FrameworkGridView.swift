//
//  FrameworkGridView.swift
//  AppleFramework
//
//  Created by roman on 22.06.2024.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationView {
            List{
                ForEach(MockData.frameworks){ framework in
                    NavigationLink(destination: FrameworkDetailsView(framework: framework, isShowingDetailsView: $viewModel.isShowingDetailsView)){
                        FrameworkTitleView(framework: framework)
                    }
                }
            }
            .navigationTitle("🍎 Framework")
        }
        .accentColor(Color(.label))
    }
}

#Preview {
    FrameworkGridView()
}

