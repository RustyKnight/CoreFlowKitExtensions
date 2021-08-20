//
//  TableDirector+Reload.swift
//  SwannSecurity
//
//  Created by Shane Whitehead on 12/6/20.
//  Copyright © 2020 Swann Communications. All rights reserved.
//

import Foundation
import FlowKit
import UIKit

extension TableDirector {
	
	func indexPath(for model: ModelProtocol) -> IndexPath? {
		let foundIndex = sections.firstIndex { (section) -> Bool in
			return section.models.contains { (item) -> Bool in
				return item.modelID == model.modelID
			}
		}
		guard let sectionIndex = foundIndex else { return nil }
		let section = sections[sectionIndex]
		let foundRowIndex = section.models.firstIndex { (item) -> Bool in
			return item.modelID == model.modelID
		}
		guard let rowIndex = foundRowIndex else { return nil }
		
		return IndexPath(row: rowIndex, section: sectionIndex)
	}

	func reload(_ model: ModelProtocol, withAnimation animation: UITableView.RowAnimation = .automatic) {
		guard let indexPath = self.indexPath(for: model) else { return }
		tableView?.reloadRows(at: [indexPath], with: animation)
	}

	func reload(_ models: [ModelProtocol], withAnimation animation: UITableView.RowAnimation = .automatic) {
		let paths = models.compactMap { indexPath(for: $0) }
		guard !paths.isEmpty else { return }
		tableView?.reloadRows(at: paths, with: animation)
	}

}
