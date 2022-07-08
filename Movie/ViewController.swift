//
//  ViewController.swift
//  Movie
//
//  Created by 박종환 on 2022/07/04.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var moviePosterImageView: UIImageView!
    
    @IBOutlet weak var preViewImgaeView1: UIImageView!
    @IBOutlet weak var preViewImageView2: UIImageView!
    @IBOutlet weak var preViewImageView3: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        moviePosterImageView.image = UIImage(named: "poster\(Int.random(in: 1...5))")
        preViewImgaeView1.layer.cornerRadius = 70
        preViewImageView2.layer.cornerRadius = 70
        preViewImageView3.layer.cornerRadius = 70
    }

    @IBAction func playButtonClicked(_ sender: UIButton) {
        moviePosterImageView.image = UIImage(named: "poster\(Int.random(in: 1...5))")
    }
    
}

