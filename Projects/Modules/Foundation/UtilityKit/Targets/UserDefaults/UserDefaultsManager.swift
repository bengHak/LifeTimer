//
//  UserDefaultsManager.swift
//  UtilityKit
//
//  Created by 고병학 on 2023/02/23.
//  Copyright © 2023 kr.byunghak. All rights reserved.
//

import Foundation

// UserDefaults is thread-safe
public struct UserDefaultsManager {
    public init() {}
    
    static func isLifeTimeStored() -> Bool {
        return UserDefaults.standard.object(forKey: .lifeTime) != nil
    }
    
    static func setLifeTime(_ lifeTime: LifeTime) {
        guard let data: Data = try? JSONEncoder().encode(lifeTime) else {
            print("🔴 Encoding life time error")
            return
        }
        UserDefaults.standard.set(data, forKey: .lifeTime)
    }
    
    static func getLifeTime() -> LifeTime? {
        guard let data: Data = UserDefaults.standard.data(forKey: .lifeTime),
              let lifeTime: LifeTime = try? JSONDecoder().decode(LifeTime.self, from: data) else {
            return nil
        }
        return lifeTime
    }
}

public struct LifeTime: Codable, Equatable {
    public let birthDay: Date
    public let deathDay: Date
    
    public init(birthDay: Date, deathDay: Date) {
        self.birthDay = birthDay
        self.deathDay = deathDay
    }
}
