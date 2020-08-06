// This source file is part of the MVVM+RB open source project
//
// Copyright (c) 2020 Olx India Pvt. Ltd. and the MVVM+RB project authors. All rights reserved.
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See https://git.naspersclassifieds.com/infrastructure/strategy_team/olxgroup-oss/-/blob/master/projects/mvvm-rb-ios/metadata.md for the list of Swift project authors
//

import UIKit

class HomeViewController: UIViewController {

    private var listBuilder: ListBuilder?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        listBuilder = ListBuilder(dependency: ListDependency(data: getListData()))
    }

    private func getListData() -> [String] {
        var numbers: [String] = []
        for number in 0...100 {
            let numberValue = NSNumber(value: number)
            let formatter = NumberFormatter()
            formatter.numberStyle = .spellOut
            if let numberAsWord: String = formatter.string(from: numberValue) {
                numbers.append("\(number)           \(numberAsWord)")
            }
        }
        return numbers
    }
    
    @IBAction func showListAction(_ sender: Any) {
        if let viewController: UIViewController = listBuilder?.build() as? UIViewController {
            navigationController?.pushViewController(viewController, animated: true)
        }
    }
}


