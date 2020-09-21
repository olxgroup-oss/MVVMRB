// This source file is part of the MVVM+RB open source project
//
// Copyright (c) 2020 Olx India Pvt. Ltd. and the MVVM+RB project authors. All rights reserved.
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See https://git.naspersclassifieds.com/infrastructure/strategy_team/olxgroup-oss/-/blob/master/projects/mvvm-rb-ios/metadata.md for the list of Swift project authors
//

/// The base builder protocol that all builders should conform to.
public protocol Buildable {
    
    associatedtype Dependency
    
    /// The dependency used for this builder to build the MVVMRB.
    var dependency: Dependency? { get }
    
    /// Initializer.
    /// - Parameter dependency: The dependency used for this builder to build the MVVMRB.
    init(dependency: Dependency?)
}
