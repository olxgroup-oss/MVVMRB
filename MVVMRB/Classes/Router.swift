// This source file is part of the MVVM+RB open source project
//
// Copyright (c) 2020 Olx India Pvt. Ltd. and the MVVM+RB project authors. All rights reserved.
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See https://git.naspersclassifieds.com/infrastructure/strategy_team/olxgroup-oss/-/blob/master/projects/mvvm-rb-ios/metadata.md for the list of Swift project authors
//

// Router class is responsible for routing
open class Router<DependencyType, ViewModelType>: NSObject, Routable {
    
    public var dependency: DependencyType
    public var viewModel: ViewModelType

    /**
    Called to  return router instance initialized with dependency and viewmodel
    
    - parameter dependency: The dependency passed by  builder
    - parameter viewModel: The view model of the module
     
    - returns: The router that holds dependency and viewmodel instances
    */
    required public init(dependency: DependencyType, viewModel: ViewModelType) {
        self.dependency = dependency
        self.viewModel = viewModel
    }
}
