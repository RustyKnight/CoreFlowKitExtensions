//
//  FlowKit+Management.swift
//  SwannSecurity
//
//  Created by Shane Whitehead on 3/8/19.
//  Copyright © 2019 Swann Communications. All rights reserved.
//

import Foundation
import FlowKit

public extension TableDirector {
	
    func remove(model: ModelProtocol, from section: TableSection) {
		guard let index = (section.models.firstIndex { $0.modelID == model.modelID }) else { return	}
		section.remove(at: index)
	}
	
    func remove(_ section: TableSection) {
		guard let index = (sections.firstIndex { $0.modelID == section.modelID }) else { return }
		remove(section: index)
	}
	
    func contains(_ section: TableSection) -> Bool {
		return firstIndexOf(section) != nil
	}
	
    func section(_ section: TableSection, contains item: ModelProtocol) -> Bool {
		return (section.models.firstIndex { $0.modelID == item.modelID }) != nil
	}

    func firstIndexOf(_ section: TableSection) -> Int? {
		return sections.firstIndex { $0.modelID == section.modelID }
	}
	
    func insert(_ section: TableSection, before beforeSection: TableSection) {
		let index = firstIndexOf(beforeSection)
		guard let insertAt = index else {
			add(section: section)
			return
		}
		add(section: section, at: insertAt)
	}

}
