//
//  SplashViewController.swift
//  Splash
//
//  Created by 고병학 on 2023/01/27.
//  Copyright © 2023 kr.byunghak.Splash. All rights reserved.
//

import RIBs
import RxCocoa
import RxSwift
import SnapKit
import Then
import UIKit
import UtilityKit

protocol SplashPresentableListener: AnyObject {
    func dismissSplashView()
}

final class SplashViewController: UIViewController, SplashPresentable, SplashViewControllable {

    weak var listener: SplashPresentableListener?

    // MARK: - UI properties
    private let titleLabel: UILabel = .init().then {
        $0.text = "LifeTimer"
        $0.textColor = .black
        $0.font = .systemFont(ofSize: 50, weight: .bold)
    }
    
    // MARK: - Properties
    private let disposeBag: DisposeBag = .init()

    // MARK: - Lifecycles
    override func viewDidLoad() {
        view.backgroundColor = .white
        configureView()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        dismissSplashViewAfter1Sec()
    }

    // MARK: - Helpers
    private func configureView() {
        view.addSubview(titleLabel)
        titleLabel.snp.makeConstraints {
            $0.center.equalToSuperview()
        }
    }
    
    private func dismissSplashViewAfter1Sec() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) { [weak self] in
            self?.listener?.dismissSplashView()
        }
    }
}

#if DEBUG
import SwiftUI

struct SplashViewControllerPreview: PreviewProvider {
    static var previews: some View {
        return SplashViewController().showPreview(.iPhone14ProMax)
    }
}
#endif
