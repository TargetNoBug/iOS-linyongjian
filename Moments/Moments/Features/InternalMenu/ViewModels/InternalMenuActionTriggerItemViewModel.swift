//
//  InternalMenuActionTriggerItemViewModel.swift
//  Moments
//
//  Created by Jake Lin on 19/10/20.
//

import UIKit
import DesignKit

class InternalMenuActionTriggerItemViewModel: InternalMenuItemViewModel {
    var type: InternalMenuItemType {
        return .actionTrigger
    }

    var title: String { return "" }
    var titleColor: UIColor { return UIColor.designKit.primaryText }
    var textAlignment: NSTextAlignment { return .left }
    var detailAttributedText: NSAttributedString? { return nil }
    var icon: UIImage? { return nil }
    var iconTint: UIColor? { return nil }

    func select() {}
}
