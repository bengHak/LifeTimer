//
//  RootBuilder.swift
//  LifeTimer
//
//  Created by 고병학 on 2023/01/28.
//  Copyright © 2023 kr.byunghak. All rights reserved.
//

import RIBs
import Splash
import SplashImpl

protocol RootDependency: Dependency { }

final class RootComponent: Component<RootDependency>,
                           SplashDependency {
    
    lazy var splash: SplashBuildable = {
        return SplashBuilder(dependency: self)
    }()
    
}

// MARK: - Builder
protocol RootBuildable: Buildable {
    func build() -> LaunchRouting
}

final class RootBuilder: Builder<RootDependency>, RootBuildable {

    override init(dependency: RootDependency) {
        super.init(dependency: dependency)
    }

    func build() -> LaunchRouting {
        let component = RootComponent(dependency: dependency)
        let viewController = RootViewController()
        let interactor = RootInteractor(presenter: viewController)
        
        let splash: SplashBuildable = component.splash
        
        let routerDependency: RootRouterDependency = .init(
            interactor: interactor,
            viewController: viewController,
            splash: splash
        )
        return RootRouter(dependency: routerDependency)
    }
}
