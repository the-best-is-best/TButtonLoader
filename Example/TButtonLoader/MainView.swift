//
//  MainView.swift
//  TButtonLoader_Example
//
//  Created by 52ndSolution on 03/03/2024.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

import SwiftUI
import TButtonLoader
struct MainView: View {
    @StateObject var viewModel = MainViewModel()

    var body: some View {
        ButtonLoader(
            isLoading: $viewModel.loading, mainView: AnyView(Text("Click Me")), loadingView: AnyView(Text("Loading")), isEnabled: $viewModel.enabled) {
                viewModel.click()
            }
    }
}

#Preview {
    MainView()
}
