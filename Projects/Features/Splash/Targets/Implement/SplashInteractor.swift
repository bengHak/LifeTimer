//
//  SplashInteractor.swift
//  Splash
//
//  Created by 고병학 on 2023/01/27.
//  Copyright © 2023 kr.byunghak.Splash. All rights reserved.
//

import RIBs
import RxSwift
import Splash

protocol SplashPresentable: Presentable {
    var listener: SplashPresentableListener? { get set }
}

final class SplashInteractor: PresentableInteractor<SplashPresentable>, SplashInteractable, SplashPresentableListener {

    weak var router: SplashRouting?
    weak var listener: SplashListener?

    // in constructor.
    override init(presenter: SplashPresentable) {
        super.init(presenter: presenter)
        presenter.listener = self
    }
    
    override func didBecomeActive() {
        super.didBecomeActive()
        // TODO: Implement business logic here.
    }

    override func willResignActive() {
        super.willResignActive()
        // TODO: Pause any business logic.
    }
    
    func dismissSplashView() {
        listener?.closeSplash()
    }
}
