//
//  SecondViewController.swift
//  Movie
//
//  Created by 박종환 on 2022/07/05.
//

import UIKit

class SecondViewController: UIViewController {
    
    //Outlet Variable
    @IBOutlet weak var bannerImageVIew: UIImageView!
    @IBOutlet weak var movieLabel: UILabel!
    //뷰컨트롤러 생명주기 종류 중 하나
    //사용자에게 화면이 보이기 직전에 실행
    //option command <>
    override func viewDidLoad() {
        super.viewDidLoad()
        bannerImageVIew.image = UIImage(named: "movie\(Int.random(in: 1...5))")
        bannerImageVIew.layer.cornerRadius = 10
        bannerImageVIew.layer.borderWidth = 5
        bannerImageVIew.layer.borderColor = UIColor.blue.cgColor
        // Do any additional setup after loading the view.
        movieLabel.text = "부산행"
        movieLabel.backgroundColor = UIColor.yellow
        movieLabel.textColor = UIColor.red
        movieLabel.font = UIFont.boldSystemFont(ofSize: 30)
    }
    
    @IBAction func resultButtonClicked(_ sender: UIButton) {
        bannerImageVIew.image = UIImage(named: "movie\(Int.random(in: 1...5))")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
