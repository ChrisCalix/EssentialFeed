//
//  CellController.swift
//  EssentialFeediOS
//
//  Created by Sonic on 8/7/23.
//

import UIKit

public struct CellController {
    let id: AnyHashable
    let dataSource: UITableViewDataSource
    let delegate: UITableViewDelegate?
    let dataSourcePrefetching: UITableViewDataSourcePrefetching?
    
    public init(id: AnyHashable, _ datasource: UITableViewDataSource) {
        self.id = id
        self.dataSource = datasource
        self.delegate = datasource as? UITableViewDelegate
        self.dataSourcePrefetching = datasource as? UITableViewDataSourcePrefetching
    }
}

extension CellController: Equatable {
    public static func == (lhs: CellController, rhs: CellController) -> Bool {
        lhs.id == rhs.id
    }
}

extension CellController: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
