// This source file is part of the MVVM+RB open source project
//
// Copyright (c) 2020 Olx India Pvt. Ltd. and the MVVM+RB project authors. All rights reserved.
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See https://git.naspersclassifieds.com/infrastructure/strategy_team/olxgroup-oss/-/blob/master/projects/mvvm-rb-ios/metadata.md for the list of Swift project authors
//

// MARK: Protocol Definition

/// The `ViewControllable` protocol is adopted by `ViewController` class:
//
protocol ViewControllable {
    associatedtype DependencyType
    associatedtype ViewModelType
    associatedtype RouterType
    
    var dependency: DependencyType { get set }
    var viewModel: ViewModelType { get set }
    var router: RouterType { get set }
    
    /**
    Called to  return view controller instance that holds the view logic
    
    - parameter dependency: The dependency from builder
    - parameter viewModel: The view model instance
    - parameter router: The router instance
     
    - returns: The view controller instance
    */
    init(dependency: DependencyType, viewModel: ViewModelType, router: RouterType)
}
