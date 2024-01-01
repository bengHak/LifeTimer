//
//  UserDefaultsKey.swift
//  UtilityKit
//
//  Created by 고병학 on 2023/02/23.
//  Copyright © 2023 kr.byunghak. All rights reserved.
//

import Foundation

 enum UserDefaultsKey: String {
    case lifeTime
    case isDarkMode
    case isInitialLaunch
    case notificationSetting
}

extension UserDefaults {
    func object(forKey key: UserDefaultsKey) -> Any? {
        return object(forKey: key.rawValue)
    }
    
    func bool(forKey key: UserDefaultsKey) -> Bool {
        return bool(forKey: key.rawValue)
    }
    
    func set(_ value: Any?, forKey key: UserDefaultsKey) {
        set(value, forKey: key.rawValue)
    }
    
    func data(forKey key: UserDefaultsKey) -> Data? {
        return data(forKey: key.rawValue)
    }
}
