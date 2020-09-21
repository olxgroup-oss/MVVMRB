// This source file is part of the MVVM+RB open source project
//
// Copyright (c) 2020 Olx India Pvt. Ltd. and the MVVM+RB project authors. All rights reserved.
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See https://git.naspersclassifieds.com/infrastructure/strategy_team/olxgroup-oss/-/blob/master/projects/mvvm-rb-ios/metadata.md for the list of Swift project authors
//

/// Basic interface between a `Router` and the UIKit `UIViewController`.
public protocol ViewControllable {
    associatedtype DependencyType
    associatedtype ViewModelType
    associatedtype RouterType
    
    var dependency: DependencyType { get set }
    var viewModel: ViewModelType { get set }
    var router: RouterType { get set }
    /// Initializer.
    /// - Parameters:
    ///   - dependency: The dependency used for this viewcontroller
    ///   - viewModel: The viewModel responsible to implement business logic of MVVMRB module
    ///   - router: The router responsible to implement routing logic of MVVMRB module
    init(dependency: DependencyType, viewModel: ViewModelType, router: RouterType, bundle: Bundle?)
}
