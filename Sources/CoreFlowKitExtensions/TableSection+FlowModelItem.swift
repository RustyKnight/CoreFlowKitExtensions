//
//  TableSection+FlowModelItem.swift
//  SwannSecurity
//
//  Created by Shane Whitehead on 18/11/19.
//  Copyright © 2019 Swann Communications. All rights reserved.
//

import Foundation
import FlowKit

public extension TableSection {
    
    func remove(_ item: ModelProtocol) {
        guard let index = (models.firstIndex { $0.modelID == item.modelID }) else { return }
        remove(at: index)
    }
    
}
