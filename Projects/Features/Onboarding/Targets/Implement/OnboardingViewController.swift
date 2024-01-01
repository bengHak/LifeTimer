//
//  OnboardingViewController.swift
//  OnboardingImpl
//
//  Created by 고병학 on 2023/03/19.
//  Copyright © 2023 kr.byunghak. All rights reserved.
//

import RIBs
import RxSwift
import SnapKit
import Then
import UIKit

import UtilityKit

protocol OnboardingPresentableListener: AnyObject {}

final class OnboardingViewController: UIViewController, OnboardingPresentable, OnboardingViewControllable {

    weak var listener: OnboardingPresentableListener?
    
    // MARK: - UI properties
    /// 생일 입력 라벨
    private let birthLabel: UILabel = .init().then {
        $0.text = "Date of birth"
    }
    
    /// 생일 입력 텍스트 필드
    
    /// 기일
    private let deathLabel: UILabel = .init().then {
        $0.text = "Date of death"
    }
    
    // MARK: - Properties
    
    // MARK: - Lifecycles
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureView()
        self.configureSubviews()
    }
    
    // MARK: - Helpers
    private func configureView() {
        view.backgroundColor = .white
        
        view.addSubview(birthLabel)
        view.addSubview(deathLabel)
    }
    
    private func configureSubviews() {
        birthLabel.snp.makeConstraints {
            $0.center.equalToSuperview()
        }
        
        deathLabel.snp.makeConstraints {
            $0.top.equalTo(birthLabel.snp.bottom)
            $0.centerX.equalToSuperview()
        }
    }
}

#if DEBUG
import SwiftUI

struct OnboardingViewControllerPreview: PreviewProvider {
    static var previews: some View {
        return OnboardingViewController().showPreview(.iPhone14ProMax)
    }
}
#endif
