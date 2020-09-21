// This source file is part of the MVVM+RB open source project
//
// Copyright (c) 2020 Olx India Pvt. Ltd. and the MVVM+RB project authors. All rights reserved.
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See https://git.naspersclassifieds.com/infrastructure/strategy_team/olxgroup-oss/-/blob/master/projects/mvvm-rb-ios/metadata.md for the list of Swift project authors
//

/// The base protocol for all routers.
public protocol Routable {
    associatedtype ViewModelType
    associatedtype DependencyType
    
    /// Dependency associated with this `Router`.
    var dependency: DependencyType { get }
    /// The base viewmodel associated with this `Router`.
    var viewModel: ViewModelType { get }
    
    /// Initializer.
    /// - Parameters:
    ///   - dependency: The dependency used for this router
    ///   - viewModel: The view model of module which defines a unit of  business logic.
    init(dependency: DependencyType, viewModel: ViewModelType)
}
