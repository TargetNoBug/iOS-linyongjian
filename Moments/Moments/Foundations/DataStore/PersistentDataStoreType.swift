//
//  PersistentDataStoreType.swift
//  Moments
//
//  Created by Jake Lin on 3/11/20.
//

import Foundation
import RxSwift

protocol PersistentDataStoreType {
    var momentsDetails: PublishSubject<MomentsDetails> { get }

    func save(momentsDetails: MomentsDetails)
}
