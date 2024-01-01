//
//  RootInteractor.swift
//  LifeTimer
//
//  Created by 고병학 on 2023/01/28.
//  Copyright © 2023 kr.byunghak. All rights reserved.
//

import RIBs
import RxSwift

protocol RootRouting: ViewableRouting {
    func attachSplash()
    func detachSplash()
}

protocol RootPresentable: Presentable {
    var listener: RootPresentableListener? { get set }
}

protocol RootListener: AnyObject { }

final class RootInteractor: PresentableInteractor<RootPresentable>,
                            RootInteractable,
                            RootPresentableListener {

    weak var router: RootRouting?
    weak var listener: RootListener?

    override init(presenter: RootPresentable) {
        super.init(presenter: presenter)
        presenter.listener = self
    }

    override func didBecomeActive() {
        super.didBecomeActive()
    }

    override func willResignActive() {
        super.willResignActive()
    }
    
    func closeSplash() {
        self.router?.detachSplash()
    }
}
