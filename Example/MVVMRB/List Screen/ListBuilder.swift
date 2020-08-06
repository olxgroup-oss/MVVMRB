// This source file is part of the MVVM+RB open source project
//
// Copyright (c) 2020 Olx India Pvt. Ltd. and the MVVM+RB project authors. All rights reserved.
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See https://git.naspersclassifieds.com/infrastructure/strategy_team/olxgroup-oss/-/blob/master/projects/mvvm-rb-ios/metadata.md for the list of Swift project authors
//

import Foundation
import MVVMRB

class ListBuilderDependency: Component<ListDependencyProtocol>, ListViewControllerDependencyProtocol, ListViewModelDependencyProtocol, ListRouterDependencyProtocol {
    
    var data: [String] {
        return dependency.data
    }
}

final class ListBuilder: Builder<ListDependencyProtocol> {
    
    func build() -> ListViewControllerProtocol? {
        guard let dependency = dependency else { return nil }
        
        let component = ListBuilderDependency(dependency: dependency)
        let viewModel = ListViewModel(dependency: component)
        let router = ListRouter(dependency: component, viewModel: viewModel)
        let viewController = ListViewController(dependency: component, viewModel: viewModel, router: router)
        return viewController
    }
}
