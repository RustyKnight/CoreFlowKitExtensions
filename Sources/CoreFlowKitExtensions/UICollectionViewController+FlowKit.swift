//
//  UICollectionViewController+FlowKit.swift
//  SwannSecurity
//
//  Created by Shane Whitehead on 8/6/20.
//  Copyright © 2020 Swann Communications. All rights reserved.
//

import Foundation
import UIKit
import FlowKit

extension UICollectionViewController {
	
	var director: FlowCollectionDirector {
		return collectionView.director
	}
	
}
