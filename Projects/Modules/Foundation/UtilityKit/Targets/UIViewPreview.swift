//
//  UIViewPreview.swift
//  UtilityKit
//
//  Created by 고병학 on 2023/02/03.
//  Copyright © 2023 kr.byunghak. All rights reserved.
//

#if DEBUG
import SwiftUI

public struct UIViewPreview<View: UIView>: UIViewRepresentable {
    public let view: View

    public init(_ builder: @escaping () -> View) {
        view = builder()
    }

    // MARK: - UIViewRepresentable

    public func makeUIView(context: Context) -> UIView {
        return view
    }

    public func updateUIView(_ view: UIView, context: Context) {
        view.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        view.setContentHuggingPriority(.defaultHigh, for: .vertical)
    }
}
#endif
