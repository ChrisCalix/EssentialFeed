//
//  ErrorView.swift
//  EssentialFeediOS
//
//  Created by Sonic on 3/7/23.
//

import UIKit

public final class ErrorView: UIView {
    @IBOutlet private var label: UILabel!
    
    public var message: String? {
        get { return label.text }
        set { label.text = newValue }
    }
    
    public override func awakeFromNib() {
        super.awakeFromNib()
        label.text = nil
    }
}
