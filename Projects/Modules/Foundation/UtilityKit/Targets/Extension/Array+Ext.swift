//
//  Array+Ext.swift
//  UtilityKit
//
//  Created by 고병학 on 1/7/24.
//  Copyright © 2024 kr.byunghak. All rights reserved.
//

import Foundation

public extension Array {
    subscript(safe index: Int) -> Element? {
        guard index >= 0, index < count else { return nil }
        return self[index]
    }
}
