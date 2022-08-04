//
//  SampleView.swift
//  UIKitPreview
//
//  Created by Alberto Lourenço on 30/07/22.
//

import UIKit
import SwiftUI

//------------------------- UIKit ViewCode -------------------------//

final class SampleView: UIView, PreviewKitProtocol {
    
    let circle = UIView()
    
    //--------------------------------------
    //  On create
    //--------------------------------------
    
    func addSubviews() {
        circle.translatesAutoresizingMaskIntoConstraints = false
        addSubview(circle)
    }
    
    //--------------------------------------
    //  Real-time update
    //--------------------------------------
    
    func updateUI() {
        
        backgroundColor = UIColor(red: 0.33, green: 0.00, blue: 0.92, alpha: 1.00)
        
        circle.backgroundColor = .green
        circle.layer.cornerRadius = 75
    }
    
    func applyConstraints() {
        
        circle.widthAnchor.constraint(equalToConstant: 150).isActive = true
        circle.heightAnchor.constraint(equalToConstant: 150).isActive = true
        circle.centerXAnchor.constraint(equalTo: centerXAnchor, constant: 0).isActive = true
        circle.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 0).isActive = true
    }
}

//------------------------- SwiftUI Preview -------------------------//

struct SampleView_Previews: PreviewProvider {
    static var previews: some View {
        PreviewKit(view: SampleView())
            .ignoresSafeArea()
    }
}
