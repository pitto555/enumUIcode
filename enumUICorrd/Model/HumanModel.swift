//
//  HumanModel.swift
//  enumUICorrd
//
//  Created by aoka on 2021/05/23.
//

import UIKit

enum HUmanModel {
    case man, woman
    
    var labelText: String {
        switch self {
        case .man:
            return "男性"
        case .woman:
            return "女性"
        }
    }
    
    var image: UIImage? {
        switch self {
        case .man:
            return UIImage(named: "man")
        case .woman:
            return UIImage(named: "woman")
        }
    }
    
    var aleatMessage: String {
        switch self {
        case .man:
            return "男性です。"
        case .woman:
            return "女性です。"
        }
    }
}
