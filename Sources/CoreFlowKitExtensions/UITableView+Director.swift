//
//  File.swift
//  
//
//  Created by Shane Whitehead on 28/12/2021.
//

import Foundation
import UIKit
import FlowKit

public extension UITableViewController {
	var director: TableDirector {
		return tableView.director
	}
}
