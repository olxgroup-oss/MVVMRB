//
//  ViewModel.swift
//  Letgo
//
//  Created by OLX - Jacob Enzien on 6/28/17.
//  Copyright © 2017 OLX. All rights reserved.
//

import Foundation

public protocol ViewModelable: class {
    func activate()
    func deactivate()
    var closeListener: CloseListener? { get set }
}

open class ViewModel: ViewModelable {
        
    public weak var closeListener: CloseListener?
    public init() {}
    open func activate() {}
    open func deactivate() {}
}

open class ViewableViewModel<ViewControllableType>: ViewModel, CloseListener {
    
    public let viewController: ViewControllableType
    private var viewControllable: ViewControllable
    
    public init(viewController: ViewControllableType) {
                
        self.viewController = viewController

        guard let viewControllable = viewController as? ViewControllable else {
            fatalError("ViewControllerType must conform to view controllable")
        }
        
        self.viewControllable = viewControllable
        super.init()
        self.viewControllable.closeListener = self
    }

    override open func activate() {
        let _ = viewControllable.uiViewController.view
    }
    
    public func wasClosed() {
        closeListener?.wasClosed()
    }
}


