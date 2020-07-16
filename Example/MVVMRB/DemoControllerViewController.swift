//
//  DemoControllerViewController.swift
//  MVVMRB
//
//  Created by Parmod on 16/07/20.
//Copyright © 2020 CocoaPods. All rights reserved.
//

import Foundation
import UIKit

protocol DemoControllerViewControllerDependencyProtocol {
}

protocol DemoControllerViewControllerProtocol: ViewControllerProtocol {
}

class DemoControllerViewController: ViewController<DemoControllerViewControllerDependencyProtocol, DemoControllerViewModelProtocol, DemoControllerRouterProtocol>, DemoControllerViewControllerProtocol {
}
