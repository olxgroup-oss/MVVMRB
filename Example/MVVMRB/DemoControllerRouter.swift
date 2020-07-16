//
//  DemoControllerRouter.swift
//  MVVMRB
//
//  Created by Parmod on 16/07/20.
//Copyright © 2020 CocoaPods. All rights reserved.
//

import Foundation
import UIKit

protocol DemoControllerRouterDependencyProtocol {
}

protocol DemoControllerRouterProtocol: RouterProtocol {
}

class DemoControllerRouter: Router<DemoControllerRouterDependencyProtocol, DemoControllerViewModelProtocol>, DemoControllerRouterProtocol {
}
