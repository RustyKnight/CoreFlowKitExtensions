//
//  CollectionSection+Empty.swift
//  SwannSecurity
//
//  Created by Shane Whitehead on 8/6/20.
//  Copyright © 2020 Swann Communications. All rights reserved.
//

import Foundation
import FlowKit
import UIKit

public extension CollectionSection {

    static func emptyHeader(height: CGFloat = 0.0001, backgroundColor: UIColor = .white) -> CollectionSectionView<EmptyTableViewHeader> {
		let smallSectionHeaderView = CollectionSectionView<EmptyTableViewHeader>()
		
		smallSectionHeaderView.on.referenceSize = { ctx -> CGSize in
			return CGSize(width: ctx.collectionSize?.width ?? 1, height: height)
		}
		smallSectionHeaderView.on.dequeue = { ctx in
			ctx.view?.contentView.backgroundColor = backgroundColor
		}
		return smallSectionHeaderView
	}

}


