// This source file is part of the MVVM+RB open source project
//
// Copyright (c) 2020 Olx India Pvt. Ltd. and the MVVM+RB project authors. All rights reserved.
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See https://git.naspersclassifieds.com/infrastructure/strategy_team/olxgroup-oss/-/blob/master/projects/mvvm-rb-ios/metadata.md for the list of Swift project authors
//

/// The component is an implementation of the Dependency protocol and responsible for owning the dependencies that the builder creates for itself and its children.
open class Component<DependencyType>: Dependency {

    public var dependency: DependencyType
    
    private var _singletons: [ObjectIdentifier: Any] = [:]
    
    /// Initializer.
    /// - Parameter dependency: The dependency used for this module
    required public init(dependency: DependencyType) {
        self.dependency = dependency
    }

    final func shared<SingletonType: Any>(singleton: () -> SingletonType) -> SingletonType {
        let key = ObjectIdentifier(SingletonType.self)
        if let object = _singletons[key] as? SingletonType {
            return object
        }

        let singletonObject = singleton()
        _singletons[key] = singletonObject

        return singletonObject
    }
}
