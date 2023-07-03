//
//  UIButton+TestHelpers.swift
//  EssentialFeediOSTests
//
//  Created by Sonic on 1/7/23.
//

import UIKit

extension UIButton {
    func simulateTap() {
        simulate(event: .touchUpInside)
    }
}
