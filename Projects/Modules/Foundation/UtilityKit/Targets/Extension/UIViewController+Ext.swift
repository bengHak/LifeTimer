//
//  UIViewController+Ext.swift
//  UtilityKit
//
//  Created by 고병학 on 2023/02/03.
//  Copyright © 2023 kr.byunghak. All rights reserved.
//

#if canImport(SwiftUI) && DEBUG
import SwiftUI
public extension UIViewController {
    private struct Preview: UIViewControllerRepresentable {
        let viewController: UIViewController
        func makeUIViewController(context: Context) -> UIViewController { viewController }
        func updateUIViewController(_ uiViewController: UIViewController, context: Context) { }
    }

    func showPreview(_ deviceType: DeviceType = .iPhone14Pro) -> some View {
        return Preview(viewController: self).previewDevice(PreviewDevice(rawValue: deviceType.name()))
    }
}
#endif
