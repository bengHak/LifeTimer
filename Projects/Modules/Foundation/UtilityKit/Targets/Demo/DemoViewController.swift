//
//  DemoViewController.swift
//  UtilityKit
//
//  Created by 고병학 on 2023/02/03.
//  Copyright © 2023 kr.byunghak. All rights reserved.
//

import UIKit

private class DemoUIViewController: UIViewController {
    // MARK: - UI properties
    private let label: UILabel = {
        let label = UILabel()
        label.text = "DemoViewController 테스트"
        label.textColor = .black
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    // MARK: - Properties

    // MARK: - Lifecycles
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
    }

    // MARK: - Helpers
    func configureView() {
        view.addSubview(label)
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            label.heightAnchor.constraint(equalTo: view.heightAnchor),
            label.widthAnchor.constraint(equalTo: view.widthAnchor)
        ])
    }
}

#if DEBUG
import SwiftUI

private struct DemoUIViewControllerPreview: PreviewProvider {
    static var previews: some View {
        DemoUIViewController().showPreview(.iPhone14Pro)
    }
}
#endif
