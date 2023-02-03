//
//  RootRouter.swift
//  LifeTimer
//
//  Created by 고병학 on 2023/01/28.
//  Copyright © 2023 kr.byunghak. All rights reserved.
//

import RIBs
import Splash
import UIKit

protocol RootInteractable: Interactable,
                           SplashListener {
    var router: RootRouting? { get set }
    var listener: RootListener? { get set }
}

protocol RootViewControllable: ViewControllable { }

struct RootRouterDependency {
    let interactor: RootInteractable
    let viewController: RootViewControllable
    let splash: SplashBuildable
}

final class RootRouter: LaunchRouter<RootInteractable, RootViewControllable>, RootRouting {
    
    private let splashBuilder: SplashBuildable
    private var splashRouter: SplashRouting?

    init(dependency: RootRouterDependency) {
        self.splashBuilder = dependency.splash
        super.init(
            interactor: dependency.interactor,
            viewController: dependency.viewController
        )
        interactor.router = self
    }
    
    override func didLoad() {
        attachSplash()
    }
    
    func attachSplash() {
        let router: SplashRouting = splashBuilder.build(withListener: interactor)
        self.splashRouter = router
        let vc: UIViewController = router.viewControllable.uiviewController
        vc.modalPresentationStyle = .fullScreen
        self.viewControllable.uiviewController.present(vc, animated: false)
        attachChild(router)
    }
    
    func detachSplash() {
        if let router = splashRouter {
            detachChild(router)
            router.viewControllable.uiviewController.dismiss(animated: false)
            splashRouter = nil
        }
    }
}
