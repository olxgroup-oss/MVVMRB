// This source file is part of the MVVM+RB open source project
//
// Copyright (c) 2020 Olx India Pvt. Ltd. and the MVVM+RB project authors. All rights reserved.
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See https://git.naspersclassifieds.com/infrastructure/strategy_team/olxgroup-oss/-/blob/master/projects/mvvm-rb-ios/metadata.md for the list of Swift project authors
//

/// A `ViewModel` defines a unit of business logic that corresponds to a router unit.
///
/// A `ViewModel` has a lifecycle driven by its owner router. When the corresponding router is attached to its
/// parent, its viewmodel becomes active. And when the router is detached from its parent, its `ViewModel` resigns
/// active.
///
/// An `Interactor` should only perform its business logic when it's currently active.
open class ViewModel<DependencyType>: NSObject, ViewModelable {
    
    public let dependency: DependencyType

    /// Initializer.
    /// - Parameter dependency: The dependency used for this view model
    required public init(dependency: DependencyType) {
        self.dependency = dependency
    }
}
