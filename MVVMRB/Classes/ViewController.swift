// This source file is part of the MVVM+RB open source project
//
// Copyright (c) 2020 Olx India Pvt. Ltd. and the MVVM+RB project authors. All rights reserved.
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See https://git.naspersclassifieds.com/infrastructure/strategy_team/olxgroup-oss/-/blob/master/projects/mvvm-rb-ios/metadata.md for the list of Swift project authors
//

class ViewController<DependencyType, ViewModelType, RouterType>: UIViewController, ViewControllable, ViewControllerProtocol {

    // self dependency if any
    var dependency: DependencyType
    var viewModel: ViewModelType
    var router: RouterType

    // required pubilc method
    required init(dependency: DependencyType, viewModel: ViewModelType, router: RouterType) {
        
        self.dependency = dependency
        self.viewModel = viewModel
        self.router = router
        
        let nibIdentifier = String(describing: type(of: self))
        super.init(nibName: nibIdentifier, bundle: Bundle.main)

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
