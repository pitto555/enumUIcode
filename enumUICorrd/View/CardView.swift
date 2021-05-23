//
//  CardView.swift
//  enumUICorrd
//
//  Created by aoka on 2021/05/23.
//

import UIKit

class CardView: UIView  {
    private var sexLabel:UILabel = .init()
    private var sexImage:UIImageView = .init()
    var human:HUmanModel = .woman
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setUpView()
        configure(human: self.human)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(human: HUmanModel) {
        self.human = human
        sexLabel.text = human.labelText
        sexImage.image = human.image
    }
    
    func setUpView() {
        let conteinerView = UIView()
        self.addSubview(conteinerView)
        conteinerView.edgesEqualToSuperView(margin: UIEdgeInsets(top: 8, left: 16, bottom: 8, right: 16))
        conteinerView.backgroundColor = .white
        
        let vStackView = UIStackView()
        conteinerView.addSubview(vStackView)
        vStackView.axis = .vertical
        vStackView.alignment = .fill
        vStackView.distribution = .fill
        vStackView.spacing = 4
        vStackView.edgesEqualToSuperView(margin: UIEdgeInsets(top: 8, left: 16, bottom: 8, right: 16))
        
        let hStackView = setStackViewHorizontal()
        vStackView.addArrangedSubview(hStackView)
        
        let boder = UIView()
        vStackView.addArrangedSubview(boder)
        boder.backgroundColor = .gray
        boder.heightEqualTo(1)
    }
    
    func setStackViewHorizontal() -> UIStackView {
        let hStackView = UIStackView()
        hStackView.axis = .horizontal
        hStackView.alignment = .fill
        
        hStackView.addArrangedSubview(sexLabel)
        sexLabel.text = "default"
        
        hStackView.addArrangedSubview(sexImage)
        sexImage.contentMode = .scaleAspectFit
        sexImage.sizeimage(CGSize(width: 50, height: 50))
        
        return hStackView
    }
}
