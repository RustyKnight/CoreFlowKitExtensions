//
//  TableSection+Header.swift
//  SwannSecurity
//
//  Created by Shane Whitehead on 6/3/20.
//  Copyright © 2020 Swann Communications. All rights reserved.
//

import Foundation
import FlowKit
import UIKit

public extension TableSection {

  static var groupedBackground: UIColor {
    if #available(iOS 13.0, *) {
      return .systemGroupedBackground
    } else {
      return .groupTableViewBackground
    }
  }
  
  static func emptyHeader(height: CGFloat = 0.0001, backgroundColor: UIColor = TableSection.groupedBackground) -> TableSectionView<EmptyTableViewHeader> {
		let smallSectionHeaderView = TableSectionView<EmptyTableViewHeader>()
		smallSectionHeaderView.on.height = { ctx in
			return height
		}
		smallSectionHeaderView.on.dequeue = { ctx in
			ctx.view?.contentView.backgroundColor = backgroundColor
		}
		return smallSectionHeaderView
	}

}

