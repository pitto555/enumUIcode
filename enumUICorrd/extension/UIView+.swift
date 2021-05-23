//
//  UIView+.swift
//  enumUICorrd
//
//  Created by aoka on 2021/05/23.
//

import UIKit

extension UIView {
    
    func heightEqualTo(_ heightSize: CGFloat) {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.heightAnchor.constraint(equalToConstant: heightSize).isActive = true
    }
    
    func sizeimage(_ size: CGSize) {
        self.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            self.widthAnchor.constraint(equalToConstant: size.width),
            self.heightAnchor.constraint(equalToConstant: size.height)
        ])
    }
    
    func edgesEqualToSuperView(margin: UIEdgeInsets = .zero) {
        guard let _superview = superview else { return }
        self.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            self.topAnchor.constraint(equalTo: _superview.topAnchor, constant: margin.top),
            self.leadingAnchor.constraint(equalTo: _superview.leadingAnchor, constant: margin.left),
            _superview.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: margin.right),
            _superview.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: margin.bottom)
        ])
    }
}
