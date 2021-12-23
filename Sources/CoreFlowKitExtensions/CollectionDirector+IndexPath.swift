//
//  CollectionDirector+IndexPath.swift
//  SwannSecurity
//
//  Created by Shane Whitehead on 9/6/20.
//  Copyright © 2020 Swann Communications. All rights reserved.
//

import Foundation
import FlowKit

public extension CollectionDirector {
	
    func model(at indexPath: IndexPath) -> ModelProtocol? {
		guard let section = section(at: indexPath.section) else { return nil }
		return section.model(at: indexPath.row)
	}
	
}
