//
//  secondTabDetailViewController.swift
//  HackwichNIne_11.2.23
//
//  Created by Marion Ano on 11/2/23.
//

import UIKit

class secondTabDetailViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    var imagePass: String?
   
    override func viewDidLoad() {
        super.viewDidLoad()
       
        if let imageName = imagePass {
            imageView.image = UIImage(named: imageName)
        }
    }


}
