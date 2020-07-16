//
//  DemoControllerBuilder.swift
//  MVVMRB
//
//  Created by Parmod on 16/07/20.
//Copyright © 2020 CocoaPods. All rights reserved.
//

import Foundation

class DemoControllerBuilderDependency: DemoControllerViewControllerDependencyProtocol, DemoControllerViewModelDependencyProtocol, DemoControllerRouterDependencyProtocol {
}

final class DemoControllerBuilder: Builder<DemoControllerBuilderDependency> {
    func build() -> DemoControllerViewControllerProtocol {
        let component = DemoControllerBuilderDependency()
        let viewModel = DemoControllerViewModel(dependency: component)
        let router = DemoControllerRouter(dependency: component, viewModel: viewModel)
        let viewController = DemoControllerViewController(dependency: component, viewModel: viewModel, router: router)
        return viewController
    }
}
