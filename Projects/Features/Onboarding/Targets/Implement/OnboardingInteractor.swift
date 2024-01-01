//
//  OnboardingInteractor.swift
//  OnboardingImpl
//
//  Created by 고병학 on 2023/03/19.
//  Copyright © 2023 kr.byunghak. All rights reserved.
//

import RIBs
import RxSwift

import Onboarding

protocol OnboardingPresentable: Presentable {
    var listener: OnboardingPresentableListener? { get set }
}

final class OnboardingInteractor: PresentableInteractor<OnboardingPresentable>,
                                  OnboardingInteractable,
                                  OnboardingPresentableListener {

    weak var router: OnboardingRouting?
    weak var listener: OnboardingListener?

    // in constructor.
    override init(presenter: OnboardingPresentable) {
        super.init(presenter: presenter)
        presenter.listener = self
    }

    override func didBecomeActive() {
        super.didBecomeActive()
    }

    override func willResignActive() {
        super.willResignActive()
    }
}
