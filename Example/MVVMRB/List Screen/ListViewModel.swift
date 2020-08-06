// This source file is part of the MVVM+RB open source project
//
// Copyright (c) 2020 Olx India Pvt. Ltd. and the MVVM+RB project authors. All rights reserved.
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See https://git.naspersclassifieds.com/infrastructure/strategy_team/olxgroup-oss/-/blob/master/projects/mvvm-rb-ios/metadata.md for the list of Swift project authors
//

import Foundation
import MVVMRB

protocol ListViewModelDependencyProtocol {
    var data: [String] { get }
}

protocol ListViewModelProtocol {
    func numberOfRows() -> Int
    func rowData(_ row: Int) -> String
}

class ListViewModel: ViewModel<ListViewModelDependencyProtocol>, ListViewModelProtocol {
    func numberOfRows() -> Int {
        return dependency.data.count
    }
    
    func rowData(_ row: Int) -> String {
        return dependency.data[row]
    }
}
