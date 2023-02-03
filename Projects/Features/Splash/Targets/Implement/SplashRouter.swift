//
//  SplashRouter.swift
//  Splash
//
//  Created by 고병학 on 2023/01/27.
//  Copyright © 2023 kr.byunghak.Splash. All rights reserved.
//

import RIBs
import Splash

protocol SplashInteractable: Interactable {
    var router: SplashRouting? { get set }
    var listener: SplashListener? { get set }
}

protocol SplashViewControllable: ViewControllable {
    // TODO: Declare methods the router invokes to manipulate the view hierarchy.
}

final class SplashRouter: ViewableRouter<SplashInteractable, SplashViewControllable>, SplashRouting {

    // TODO: Constructor inject child builder protocols to allow building children.
    override init(interactor: SplashInteractable, viewController: SplashViewControllable) {
        super.init(interactor: interactor, viewController: viewController)
        interactor.router = self
    }
}
