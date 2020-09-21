// This source file is part of the MVVM+RB open source project
//
// Copyright (c) 2020 Olx India Pvt. Ltd. and the MVVM+RB project authors. All rights reserved.
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See https://git.naspersclassifieds.com/infrastructure/strategy_team/olxgroup-oss/-/blob/master/projects/mvvm-rb-ios/metadata.md for the list of Swift project authors
//

/// The `ViewModelable` protocol is adopted by `ViewModel` class:
protocol ViewModelable: NSObject {
    
    associatedtype DependencyType
    
    var dependency: DependencyType { get }
    
    /**
    Called to  return view model instance
    
    - parameter dependency: The dependency from builder
     
    - returns: The view model instance
    */
    init(dependency: DependencyType)
}
