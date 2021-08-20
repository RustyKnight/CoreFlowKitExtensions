//
//  CollectionSection+ModelAt.swift
//  SwannSecurity
//
//  Created by Shane Whitehead on 9/6/20.
//  Copyright © 2020 Swann Communications. All rights reserved.
//

import Foundation
import FlowKit

extension CollectionSection {
	
	func model(at index: Int) -> ModelProtocol? {
		guard index < models.count else { return nil }
		return models[index]
	}
	
}
