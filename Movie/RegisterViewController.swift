//
//  RegisterViewController.swift
//  Movie
//
//  Created by 박종환 on 2022/07/06.
//

import UIKit

class RegisterViewController: UIViewController {
    @IBOutlet weak var emaOrTelTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var nicknameTextField: UITextField!
    @IBOutlet weak var locationTextField: UITextField!
    @IBOutlet weak var recCodeTextField: UITextField!
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var addInfoSwitch: UISwitch!
    
    @IBOutlet weak var jackflixLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        designTextField(textField: emaOrTelTextField, keyboardTypeNum: 1, placeHolder: "이메일 주소 또는 전화번호")
        designTextField(textField: passwordTextField, keyboardTypeNum: 2, placeHolder: "비밀번호")
        designTextField(textField: nicknameTextField, keyboardTypeNum: 0, placeHolder: "닉네임")
        designTextField(textField: locationTextField, keyboardTypeNum: 0, placeHolder: "위치")
        designTextField(textField: recCodeTextField, keyboardTypeNum: 0, placeHolder: "추천 코드 입력")
        
        registerButton.setTitle("회원가입", for: .normal)
        registerButton.setTitleColor(UIColor.black, for: .normal)
        registerButton.setTitle("완료", for: .highlighted)
        registerButton.setTitleColor(UIColor.red, for: .highlighted)
        registerButton.backgroundColor = .white
        registerButton.layer.cornerRadius = 5
        
        addInfoSwitch.setOn(true, animated: true)
        addInfoSwitch.onTintColor = #colorLiteral(red: 0.9125432864, green: 0.1876754353, blue: 0.0868530627, alpha: 1)
        addInfoSwitch.tintColor = .lightGray
        addInfoSwitch.backgroundColor = .lightGray
        addInfoSwitch.layer.cornerRadius = 16
    }
        
    func designTextField(textField: UITextField, keyboardTypeNum: Int, placeHolder: String ){
        if(keyboardTypeNum == 0) {
            textField.keyboardType = .default
        } else if(keyboardTypeNum == 1){
            textField.keyboardType = .emailAddress
        } else if(keyboardTypeNum == 2){
            textField.keyboardType = .numberPad
        }
        textField.attributedPlaceholder = NSAttributedString(string: placeHolder, attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        textField.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        textField.textAlignment = .center
        textField.borderStyle = .roundedRect
        textField.backgroundColor = .gray
    }
    
    @IBAction func registerButtonClicked(_ sender: UIButton) {
        view.endEditing(true)
    }
    
    @IBAction func tapGesture(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
}
