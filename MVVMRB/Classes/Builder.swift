//
//  Builder.swift
//  Letgo
//
//  Created by OLX - Jacob Enzien on 6/28/17.
//  Copyright © 2017 OLX. All rights reserved.
//

import Foundation

public protocol Buildable {
    associatedtype BuildType
    associatedtype DependencyType

    init(dependency: DependencyType)
    func build() -> BuildType
}

open class Builder<BuildType, DependencyType>: Buildable {

    public var dependency: DependencyType

    required public init(dependency: DependencyType) {
        self.dependency = dependency
    }

    open func build() -> BuildType {
        fatalError("Not Implemented")
    }
}
