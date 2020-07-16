// This source file is part of the MVVM+RB open source project
//
// Copyright (c) 2020 Olx India Pvt. Ltd. and the MVVM+RB project authors. All rights reserved.
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See https://git.naspersclassifieds.com/infrastructure/strategy_team/olxgroup-oss/-/blob/master/projects/mvvm-rb-ios/metadata.md for the list of Swift project authors
//

// MARK: Protocol Definition

/// The `Routable` protocol is adopted by `Router` class with generic types:
///  * `ViewModelType` viewmodel
///  * `DependencyType` dependency from `Builder`
//
protocol Routable {
    associatedtype ViewModelType
    associatedtype DependencyType
    
    var dependency: DependencyType { get }
    var viewModel: ViewModelType { get }
    
    /**
    Called to  return router instance initialized with dependency and viewmodel
    
    - parameter dependency: The dependency passed by  builder
    - parameter viewModel: The view model of the module
     
    - returns: The router that holds dependency and viewmodel instances
    */
    init(dependency: DependencyType, viewModel: ViewModelType)
}
