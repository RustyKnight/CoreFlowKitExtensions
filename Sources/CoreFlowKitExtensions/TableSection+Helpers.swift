//
//  TableSection+Helpers.swift
//  SwannSecurity
//
//  Created by Shane Whitehead on 4/11/20.
//  Copyright © 2020 Swann Communications. All rights reserved.
//

import Foundation
import UIKit
import FlowKit

public extension TableSection {
	
	convenience init() {
		self.init(headerTitle: nil, footerTitle: nil)
	}
	
	func append(_ model: ModelProtocol) {
		add(model: model, at: nil)
	}
	
}
