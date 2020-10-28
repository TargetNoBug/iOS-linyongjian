//
//  BaseListItemView.swift
//  Moments
//
//  Created by Jake Lin on 27/10/20.
//

import Foundation
import UIKit

class BaseListItemView: UIView, ListItemView {
    // Implemented by subclass
    // swiftlint:disable unavailable_function
    func update(with viewModel: ListItemViewModel) {
        fatalError(L10n.Development.fatalErrorSubclassToImplement)
    }
}
