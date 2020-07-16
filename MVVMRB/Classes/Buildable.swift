// This source file is part of the MVVM+RB open source project
//
// Copyright (c) 2020 Olx India Pvt. Ltd. and the MVVM+RB project authors. All rights reserved.
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See https://git.naspersclassifieds.com/infrastructure/strategy_team/olxgroup-oss/-/blob/master/projects/mvvm-rb-ios/metadata.md for the list of Swift project authors
//

// MARK: Protocol Definition

/// The `Buildable` protocol is adopted by `Builder` to list all the dependencies provided by:
///  * its parent flow
//
protocol Buildable {
    
    associatedtype Dependency
    
    var dependency: Dependency? { get }
    
    /**
    Called to  return builder initialized with optional dependency
    
    - parameter dependency: The dependency from its parent
     
    - returns: The builder that holds all the dependency from its parent.
    */
    init(dependency: Dependency?)
}
