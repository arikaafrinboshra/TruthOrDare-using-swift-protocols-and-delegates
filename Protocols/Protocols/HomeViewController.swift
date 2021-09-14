//
//  ViewController.swift
//  Protocols
//
//  Created by Arika Afrin Boshra on 13/9/21.
//

import UIKit

protocol SelectionDelegate {
    func didTapChoice(image: UIImage, task: String, color: UIColor)
}

class HomeViewController: UIViewController {
    
    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var chooseButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        chooseButton.layer.cornerRadius = chooseButton.frame.size.height / 2
    }
    
    @IBAction func chooseButton(_ sender: UIButton) {
        let selectionVC = storyboard?.instantiateViewController(identifier: "SelectionViewController") as! SelectionViewController
        selectionVC.selectionDelegate = self
        present(selectionVC, animated: true, completion: nil)
    }
    
}

extension HomeViewController: SelectionDelegate {
    
    func didTapChoice(image: UIImage, task: String, color: UIColor) {
        mainImage.image = image
        nameLabel.text = task
        view.backgroundColor = color
        
        chooseButton.setTitle("Choose Again", for: .normal)
    }
}
