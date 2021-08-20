//
//  CollectionDirector+Support.swift
//  SwannSecurity
//
//  Created by Shane Whitehead on 9/6/20.
//  Copyright © 2020 Swann Communications. All rights reserved.
//

import Foundation
import FlowKit

extension CollectionDirector {
	
	func indexPath(for model: ModelProtocol) -> IndexPath? {
		for sectionIndex in 0..<sections.count {
			let section = sections[sectionIndex]
			for rowIndex in 0..<section.models.count {
				guard let item = section.model(at: rowIndex) else { continue }
				guard item.modelID == model.modelID else { continue }
				return IndexPath(row: rowIndex, section: sectionIndex)
			}
		}
		return nil
	}

	func indexPath(where matches: (ModelProtocol) -> Bool) -> IndexPath? {
		for sectionIndex in 0..<sections.count {
			let section = sections[sectionIndex]
			for rowIndex in 0..<section.models.count {
        guard let item = section.model(at: rowIndex) else { continue }
				guard matches(item) else { continue }
				return IndexPath(row: rowIndex, section: sectionIndex)
			}
		}
		return nil
	}

	func reload(_ model: ModelProtocol) {
		guard let indexPath = self.indexPath(for: model) else { return }
		collection?.reloadItems(at: [indexPath])
	}

	func reload(_ models: [ModelProtocol]) {
		let paths = models.compactMap { indexPath(for: $0) }
		guard !paths.isEmpty else { return }
		collection?.reloadItems(at: paths)
	}

}
