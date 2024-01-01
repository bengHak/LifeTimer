//
//  Splash.swift
//  SplashInterface
//
//  Created by 고병학 on 2023/01/27.
//  Copyright © 2023 kr.byunghak. All rights reserved.
//

import RIBs

public protocol SplashRouting: ViewableRouting { }

public protocol SplashBuildable: Buildable {
    func build(withListener listener: SplashListener) -> SplashRouting
}

public protocol SplashListener: AnyObject {
    func closeSplash()
}
