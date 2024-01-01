//
//  OnboardingBuilder.swift
//  OnboardingImpl
//
//  Created by 고병학 on 2023/03/19.
//  Copyright © 2023 kr.byunghak. All rights reserved.
//

import RIBs

import Onboarding

public protocol OnboardingDependency: Dependency { }

final class OnboardingComponent: Component<OnboardingDependency> { }

// MARK: - Builder

public final class OnboardingBuilder: Builder<OnboardingDependency>, OnboardingBuildable {

    override public init(dependency: OnboardingDependency) {
        super.init(dependency: dependency)
    }

    public func build(withListener listener: OnboardingListener) -> OnboardingRouting {
        let component = OnboardingComponent(dependency: dependency)
        let viewController = OnboardingViewController()
        let interactor = OnboardingInteractor(presenter: viewController)
        interactor.listener = listener
        return OnboardingRouter(interactor: interactor, viewController: viewController)
    }
}
