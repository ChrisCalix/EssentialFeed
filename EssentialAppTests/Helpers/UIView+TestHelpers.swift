//
//  UIView+TestHelpers.swift
//  EssentialAppTests
//
//  Created by Sonic on 6/7/23.
//

import UIKit

extension UIView {
    func enforceLayoutCycle() {
        layoutIfNeeded()
        RunLoop.current.run(until: Date())
    }
}
