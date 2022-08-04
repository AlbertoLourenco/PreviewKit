//
//  Extensions.swift
//  UIKitPreview
//
//  Created by Alberto Lourenço on 30/07/22.
//

import UIKit
import SwiftUI

protocol PreviewKitProtocol {
    func addSubviews()
    func updateUI()
    func applyConstraints()
}

struct PreviewKit<PreviewView: UIView & PreviewKitProtocol>: UIViewRepresentable {
    let view: PreviewView
    func makeUIView(context: Context) -> PreviewView {
        configConstraints()
        view.addSubviews()
        return view
    }
    func updateUIView(_ uiView: PreviewView, context: Context) {
        uiView.updateUI()
        uiView.applyConstraints()
    }
    private func configConstraints() {
        view.translatesAutoresizingMaskIntoConstraints = false
        view.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.size.width).isActive = true
        view.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.size.height).isActive = true
    }
}
