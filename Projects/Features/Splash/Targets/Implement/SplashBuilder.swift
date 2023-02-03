//
//  SplashBuilder.swift
//  Splash
//
//  Created by 고병학 on 2023/01/27.
//  Copyright © 2023 kr.byunghak.Splash. All rights reserved.
//

import RIBs
import Splash

public protocol SplashDependency: Dependency {

}

final class SplashComponent: Component<SplashDependency> {

}

public final class SplashBuilder: Builder<SplashDependency>, SplashBuildable {

    override public init(dependency: SplashDependency) {
        super.init(dependency: dependency)
    }

    public func build(withListener listener: SplashListener) -> SplashRouting {
        let component = SplashComponent(dependency: dependency)
        let viewController = SplashViewController()
        let interactor = SplashInteractor(presenter: viewController)
        interactor.listener = listener
        return SplashRouter(interactor: interactor, viewController: viewController)
    }
}
