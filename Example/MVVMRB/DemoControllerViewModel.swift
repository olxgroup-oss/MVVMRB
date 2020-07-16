//
//  DemoControllerViewModel.swift
//  MVVMRB
//
//  Created by Parmod on 16/07/20.
//Copyright © 2020 CocoaPods. All rights reserved.
//

import Foundation

protocol DemoControllerViewModelDependencyProtocol {
}

protocol DemoControllerViewModelProtocol: ViewModelProtocol {
}

class DemoControllerViewModel: ViewModel<DemoControllerViewModelDependencyProtocol>, DemoControllerViewModelProtocol {
}
