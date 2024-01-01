//
//  UserDefaultsTest.swift
//  UtilityKitTests
//
//  Created by 고병학 on 2023/02/23.
//  Copyright © 2023 kr.byunghak. All rights reserved.
//

import XCTest

final class UserDefaultsTest: XCTestCase {

    func test_save() throws {
        let lifeTimer: LifeTime = .init(birthDay: .init(), deathDay: .init())
        print(UserDefaultsManager.isLifeTimeStored())
        UserDefaultsManager.setLifeTime(lifeTimer)
        print(UserDefaultsManager.isLifeTimeStored())
        if let lt: LifeTime = UserDefaultsManager.getLifeTime() {
            XCTAssert(lt == lifeTimer)
        } else {
            XCTAssert(false)
        }
    }
}
