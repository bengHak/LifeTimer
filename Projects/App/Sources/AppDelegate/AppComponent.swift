//
//  AppComponent.swift
//  LifeTimer
//
//  Created by 고병학 on 2023/01/28.
//  Copyright © 2023 kr.byunghak. All rights reserved.
//

import RIBs

final class AppComponent: Component<EmptyComponent>, RootDependency {
    init() {
        super.init(dependency: EmptyComponent())
    }
}
 
