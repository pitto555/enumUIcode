//
//  ViewController.swift
//  enumUICorrd
//
//  Created by aoka on 2021/05/23.
//

import UIKit

class FirstViewController: UIViewController {
    let humans:[HUmanModel] = [.man,.woman]
    
    @IBOutlet private weak var stackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.configureView()
    }
    
    private func configureView() {
        for human in humans {
            let cardView = CardView()
            cardView.configure(human: human)
            
            let tapAction = UITapGestureRecognizer(target: self, action: #selector(tapGard(sender:)))
            cardView.addGestureRecognizer(tapAction)
            stackView.addArrangedSubview(cardView)
        }
    }
    
    private func showAleat(message: String) {
        let aleat = UIAlertController(title: nil, message: message, preferredStyle: .alert)
        aleat.addAction(UIAlertAction(title: "キャンセル", style: .cancel))
        present(aleat, animated: true, completion: nil)
    }
    
    @objc func tapGard(sender: UITapGestureRecognizer) {
        guard let cardView = sender.view as? CardView else {
            return
        }
        showAleat(message: cardView.human.aleatMessage)
    }
}
