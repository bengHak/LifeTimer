//
//  RootViewController.swift
//  LifeTimer
//
//  Created by 고병학 on 2023/01/28.
//  Copyright © 2023 kr.byunghak. All rights reserved.
//

import RIBs
import RxSwift
import UIKit

protocol RootPresentableListener: AnyObject { }

final class RootViewController: UIViewController, RootPresentable, RootViewControllable {

    weak var listener: RootPresentableListener?
    
    // MARK: - UI properties
    
    // MARK: - Properties
    
    // MARK: - Lifecycles
    override func viewDidLoad() {
        print("hello")
        view.backgroundColor = .systemBackground
    }
    
    // MARK: - Helpers
}

#if DEBUG
import SwiftUI

private struct RootViewControllerPreview: PreviewProvider {
    static var previews: some View {
        RootViewController().showPreview(.iPhone14Pro)
    }
}
#endif
