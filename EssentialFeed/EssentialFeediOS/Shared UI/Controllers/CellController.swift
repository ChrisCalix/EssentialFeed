//
//  CellController.swift
//  EssentialFeediOS
//
//  Created by Sonic on 8/7/23.
//

import UIKit

public struct CellController {
    let dataSource: UITableViewDataSource
    let delegate: UITableViewDelegate?
    let dataSourcePrefetching: UITableViewDataSourcePrefetching?
    
    public init(_ dataSource: UITableViewDataSource & UITableViewDelegate & UITableViewDataSourcePrefetching) {
        self.dataSource = dataSource
        self.delegate = dataSource
        self.dataSourcePrefetching = dataSource
    }
    
    public init(_ datasource: UITableViewDataSource) {
        self.dataSource = datasource
        self.delegate = nil
        self.dataSourcePrefetching = nil
    }
}
