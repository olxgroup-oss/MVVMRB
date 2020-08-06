// This source file is part of the MVVM+RB open source project
//
// Copyright (c) 2020 Olx India Pvt. Ltd. and the MVVM+RB project authors. All rights reserved.
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See https://git.naspersclassifieds.com/infrastructure/strategy_team/olxgroup-oss/-/blob/master/projects/mvvm-rb-ios/metadata.md for the list of Swift project authors
//

import UIKit
import MVVMRB

protocol ListViewControllerDependencyProtocol {
}

protocol ListViewControllerProtocol {
}

class ListViewController: ViewController<ListViewControllerDependencyProtocol, ListViewModelProtocol, ListRouterProtocol>, ListViewControllerProtocol {
    
    @IBOutlet weak var listView: UITableView!
    
    private struct ListViewConstants {
        static let listViewCellIdentifier: String = "ListViewCell"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        listView.register(UITableViewCell.self, forCellReuseIdentifier: ListViewConstants.listViewCellIdentifier)
    }
}

extension ListViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRows()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: ListViewConstants.listViewCellIdentifier, for: indexPath)
        cell.textLabel?.text = viewModel.rowData(indexPath.row)
        return cell
    }
}
