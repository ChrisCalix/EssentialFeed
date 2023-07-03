//
//  UIRefreshControl+Helpers.swift
//  EssentialFeediOS
//
//  Created by Sonic on 3/7/23.
//

import UIKit

extension UIRefreshControl {
    func update(isRefreshing: Bool) {
        isRefreshing ? beginRefreshing() : endRefreshing()
    }
}
