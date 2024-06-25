//
//  FrameworkDridViewModel.swift
//  AppleFramework
//
//  Created by roman on 24.06.2024.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    var selectedFramework: Framework?{
        didSet{ isShowingDetailsView = true }
    }
    
    @Published var isShowingDetailsView = false
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
}
