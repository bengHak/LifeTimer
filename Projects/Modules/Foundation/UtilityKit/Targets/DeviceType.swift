//
//  DeviceType.swift
//  UtilityKit
//
//  Created by 고병학 on 2023/02/03.
//  Copyright © 2023 kr.byunghak. All rights reserved.
//

import Foundation

public enum DeviceType {
    case iPhoneSE3
    case iPhone8
    case iPhone12Pro
    case iPhone12ProMax
    case iPhone14Pro
    case iPhone14ProMax

    public func name() -> String {
        switch self {
        case .iPhoneSE3:
            return "iPhone SE (3rd generation)"
        case .iPhone8:
            return "iPhone 8"
        case .iPhone12Pro:
            return "iPhone 12 Pro"
        case .iPhone12ProMax:
            return "iPhone 12 Pro Max"
        case .iPhone14Pro:
            return "iPhone 14 Pro"
        case .iPhone14ProMax:
            return "iPhone 14 Pro Max"
        }
    }
}
