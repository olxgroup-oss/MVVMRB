//
//  Component.swift
//  Letgo
//
//  Created by OLX - Jacob Enzien on 6/28/17.
//  Copyright © 2017 OLX. All rights reserved.
//

import Foundation

public protocol Dependency {
    associatedtype DependencyType
    
    init (dependency: DependencyType)
}

open class Component<DependencyType>: Dependency {
    
    public let dependency: DependencyType
    var singletons: [ObjectIdentifier: AnyObject] = [:]
    
    public required init(dependency: DependencyType) {
        self.dependency = dependency
    }
    
    // MARK: - private
    public final func shared<SingletonType: AnyObject>(singleton: () -> SingletonType) -> SingletonType {
        let key = ObjectIdentifier(SingletonType.self)
        if let object = singletons[key] as? SingletonType {
            return object
        }
        
        let singletonObject = singleton()
        singletons[key] = singletonObject
        
        return singletonObject
    }
}
