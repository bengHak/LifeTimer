//
//  OnboardingInterface.swift
//  OnboardingImpl
//
//  Created by 고병학 on 2023/03/19.
//  Copyright © 2023 kr.byunghak. All rights reserved.
//

import RIBs

public protocol OnboardingRouting: ViewableRouting { }

public protocol OnboardingBuildable: Buildable {
    func build(withListener listener: OnboardingListener) -> OnboardingRouting
}

public protocol OnboardingListener: AnyObject {}
