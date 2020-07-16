// This source file is part of the MVVM+RB open source project
//
// Copyright (c) 2020 Olx India Pvt. Ltd. and the MVVM+RB project authors. All rights reserved.
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See https://git.naspersclassifieds.com/infrastructure/strategy_team/olxgroup-oss/-/blob/master/projects/mvvm-rb-ios/metadata.md for the list of Swift project authors
//

open class ViewController<DependencyType, ViewModelType, RouterType>: UIViewController, ViewControllable, ViewControllerProtocol {

    public var dependency: DependencyType
    public var viewModel: ViewModelType
    public var router: RouterType
    
    /**
    Called to  return view controller instance that holds the view logic
    
    - parameter dependency: The dependency from builder
    - parameter viewModel: The view model instance
    - parameter router: The router instance
     
    - returns: The view controller instance
    */
    required public init(dependency: DependencyType, viewModel: ViewModelType, router: RouterType) {
        
        self.dependency = dependency
        self.viewModel = viewModel
        self.router = router
        
        let nibIdentifier = String(describing: type(of: self))
        super.init(nibName: nibIdentifier, bundle: Bundle.main)

    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
