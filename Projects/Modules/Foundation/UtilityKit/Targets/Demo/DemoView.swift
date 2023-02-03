//
//  DemoView.swift
//  UtilityKit
//
//  Created by 고병학 on 2023/02/03.
//  Copyright © 2023 kr.byunghak. All rights reserved.
//

import UIKit

private class DemoLabelView: UIView {
    // MARK: - UI properties
    private let label: UILabel = {
        let label = UILabel()
        label.text = "LabelView 테스트"
        label.textColor = .black
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    // MARK: - Properties
    init() {
        super.init(frame: .zero)
        configureView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Lifecycles

    // MARK: - Helpers
    func configureView() {
        addSubview(label)
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            label.heightAnchor.constraint(equalTo: self.heightAnchor),
            label.widthAnchor.constraint(equalTo: self.widthAnchor)
        ])
    }
}

import SwiftUI

struct DemoLabelPreview: PreviewProvider {
    static var previews: some View {
        UIViewPreview {
            DemoLabelView()
        }.previewLayout(
            .fixed(width: 350, height: 100)
        )
    }
}
