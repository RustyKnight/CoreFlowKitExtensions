//
//  CollectionDirector+IndexOfSection.swift
//  SwannSecurity
//
//  Created by Shane Whitehead on 29/3/21.
//  Copyright © 2021 Swann Communications. All rights reserved.
//

import Foundation
import FlowKit

extension CollectionDirector {
	
	func indexOf(section: TableSection) -> Int? {
		return sections.firstIndex { $0.UUID == section.UUID }
	}
	
}
