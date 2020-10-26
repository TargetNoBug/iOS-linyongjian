//
//  BaseTableViewCell.swift
//  Moments
//
//  Created by Jake Lin on 26/10/20.
//

import Foundation
import UIKit

final class BaseTableViewCell<V: BaseListItemView<VM>, VM: ListItemViewModel>: UITableViewCell, ListItemComponent {
    private let view: V

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        view = .init()
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        selectionStyle = .none

        contentView.addSubview(view)
        view.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }

    // swiftlint:disable unavailable_function
    required init?(coder: NSCoder) {
        fatalError(L10n.Development.fatalErrorInitCoderNotImplemented)
    }

    final func update(with viewModel: ListItemViewModel) {
        (viewModel as? VM).map { update($0) }
    }

    func update(_ viewModel: VM) {
        view.update(viewModel)
    }
}
