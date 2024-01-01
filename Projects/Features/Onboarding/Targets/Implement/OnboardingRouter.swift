//
//  OnboardingRouter.swift
//  OnboardingImpl
//
//  Created by 고병학 on 2023/03/19.
//  Copyright © 2023 kr.byunghak. All rights reserved.
//

import RIBs

import Onboarding

protocol OnboardingInteractable: Interactable {
    var router: OnboardingRouting? { get set }
    var listener: OnboardingListener? { get set }
}

protocol OnboardingViewControllable: ViewControllable { }

final class OnboardingRouter: ViewableRouter<OnboardingInteractable, OnboardingViewControllable>, OnboardingRouting {

    override init(interactor: OnboardingInteractable, viewController: OnboardingViewControllable) {
        super.init(interactor: interactor, viewController: viewController)
        interactor.router = self
    }
}
