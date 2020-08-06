// This source file is part of the MVVM+RB open source project
//
// Copyright (c) 2020 Olx India Pvt. Ltd. and the MVVM+RB project authors. All rights reserved.
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See https://git.naspersclassifieds.com/infrastructure/strategy_team/olxgroup-oss/-/blob/master/projects/mvvm-rb-ios/metadata.md for the list of Swift project authors
//

/// Utility that instantiates a MVVMRB module and sets up its internal  dependencies, wirings.
open class Builder<Dependency>: Buildable {
    
    /// The dependency used for this builder to build the MVVMRB.
    public let dependency: Dependency?
    
    /// Initializer.
    /// - Parameter dependency: The dependency used for this builder to build the MVVMRB.
    required public init(dependency: Dependency?) {
        self.dependency = dependency
    }
}
