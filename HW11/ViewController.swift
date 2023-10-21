//
//  ViewController.swift
//  HW11
//
//  Created by Aida Primkulova on 20.10.2023.
//

import UIKit
import SnapKit
class ViewController: UIViewController {
    // UI
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Login"
        label.textColor = .white
        label.textAlignment = .left
        label.font = .boldSystemFont(ofSize: 26)
        return label
    }()
    
    private lazy var textField: UITextField = {
        let textField = UITextField()
        let icon = UIImage(named: "login")
        let checked = UIImage(named: "checked")
        textField.placeholder = "      Write your login"
        textField.textAlignment = .left
        textField.textColor = .black
        textField.backgroundColor = .white
        textField.font = .boldSystemFont(ofSize: 14)
        textField.setLeftIcon(icon)
        textField.setRightIcon(checked)
        return textField
    }()

    private lazy var textFieldPassword: UITextField = {
        let textFieldPassword = UITextField()
        let icon = UIImage(named: "password")
        textFieldPassword.placeholder = "      Password"
        textFieldPassword.textAlignment = .left
        textFieldPassword.textColor = .black
        textFieldPassword.backgroundColor = .white
        textFieldPassword.setLeftIcon(icon)
        textFieldPassword.font = .boldSystemFont(ofSize: 14)
        return textFieldPassword
    }()
    
    private lazy var button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Login", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = UIColor(named: "buttonBackgroundColor")
        button.titleLabel?.font = .boldSystemFont(ofSize: 14)
        return button
    }()
    
    private lazy var buttonLink: UIButton = {
        let buttonLink = UIButton(type: .system)
        buttonLink.setTitle("Forgot your password?", for: .normal)
        buttonLink.setTitleColor(.white, for: .normal)
        buttonLink.backgroundColor = .none
        buttonLink.titleLabel?.font = .boldSystemFont(ofSize: 14)
        return buttonLink
    }()
    
    private lazy var connectWithLabel: UILabel = {
        let connectWithLabel = UILabel()
        connectWithLabel.text = "-------- or connect with --------"
        connectWithLabel.textColor = .black
        connectWithLabel.textAlignment = .center
        connectWithLabel.font = .boldSystemFont(ofSize: 14)
        return connectWithLabel
    }()
    
    private lazy var facebookButton: UIButton = {
        let facebookButton = UIButton(type: .system)
        facebookButton.setTitle("Facebook", for: .normal)
        facebookButton.setTitleColor(.white, for: .normal)
        facebookButton.backgroundColor = .systemBlue
        facebookButton.titleLabel?.font = .boldSystemFont(ofSize: 14)
        facebookButton.setImage(UIImage(systemName: "facebookIcon"), for: .normal)
        return facebookButton
    }()
    private lazy var textFieldFB: UITextField = {
       let textFieldFB = UITextField()
        let facebookIcon = UIImage(named: "facebookIcon")
        textFieldFB.setLeftIcon(facebookIcon)
        return textFieldFB
    }()
    private lazy var twitterButton: UIButton = {
        let twitterButton = UIButton(type: .system)
        twitterButton.setTitle("Twitter", for: .normal)
        twitterButton.setTitleColor(.white, for: .normal)
        twitterButton.backgroundColor = UIColor(named: "buttonBackgroundColor")
        twitterButton.titleLabel?.font = .boldSystemFont(ofSize: 14)
        twitterButton.setImage(UIImage(systemName: "twitterIcon"), for: .normal)
        return twitterButton
    }()
    
    private lazy var textFieldTw: UITextField = {
       let textFieldTw = UITextField()
        let twitterIcon = UIImage(named: "twitterIcon")
        textFieldTw.setLeftIcon(twitterIcon)
        return textFieldTw
    }()
    
    private lazy var accountLabel: UILabel = {
        let accountLabel = UILabel()
        accountLabel.text = "Don't have account?"
        accountLabel.textColor = .black
        accountLabel.textAlignment = .center
        accountLabel.font = .boldSystemFont(ofSize: 14)
        return accountLabel
    }()
    
    private lazy var signUpLink: UIButton = {
        let signUpLink = UIButton(type: .system)
        signUpLink.setTitle("Sign up", for: .normal)
        signUpLink.setTitleColor(.blue, for: .normal)
        signUpLink.backgroundColor = .none
        signUpLink.titleLabel?.font = .boldSystemFont(ofSize: 14)
        return signUpLink
    }()
    
// Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupViews()
        setupConstraints()
        
        func viewDidLayoutSubviews() {
            super.viewDidLayoutSubviews()
            textField.layer.cornerRadius = 25
            textFieldPassword.layer.cornerRadius = 25
            button.layer.cornerRadius = 25
            buttonLink.layer.borderWidth = 0
            facebookButton.layer.cornerRadius = 15
            twitterButton.layer.cornerRadius = 15

        }
        viewDidLayoutSubviews()
        
    }
    
    // Setup Views
    
    private func setupViews() {
        view.backgroundColor = UIColor(named: "backgroundColor")
        view.addSubview(titleLabel)
        view.addSubview(textField)
        view.addSubview(textFieldPassword)
        view.addSubview(button)
        view.addSubview(buttonLink)
        view.addSubview(connectWithLabel)
        view.addSubview(facebookButton)
        view.addSubview(textFieldFB)
        view.addSubview(twitterButton)
        view.addSubview(textFieldTw)
        view.addSubview(accountLabel)
        view.addSubview(signUpLink)
    }
    // Setup Constraints
    private func setupConstraints() {
        titleLabel.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(50)
        }
        textField.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.top.equalTo(titleLabel.snp.bottom).offset(50)
            make.leading.equalToSuperview().offset(50)
            make.trailing.equalToSuperview().offset(-50)
            make.height.equalTo(50)
        }
        textFieldPassword.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.top.equalTo(textField.snp.bottom).offset(20)
            make.leading.equalToSuperview().offset(50)
            make.trailing.equalToSuperview().offset(-50)
            make.height.equalTo(50)
        }
        button.snp.makeConstraints {make in
            make.top.equalTo(textFieldPassword.snp.bottom).offset(60)
            make.leading.equalToSuperview().offset(50)
            make.trailing.equalToSuperview().offset(-50)
            make.height.equalTo(50)
        }
        buttonLink.snp.makeConstraints {make in
            make.top.equalTo(button.snp.bottom).offset(5)
            make.leading.equalToSuperview().offset(50)
            make.trailing.equalToSuperview().offset(-50)
            make.height.equalTo(40)
        }
        connectWithLabel.snp.makeConstraints {make in
            make.top.equalTo(buttonLink.snp.bottom).offset(190)
            make.leading.equalToSuperview().offset(50)
            make.trailing.equalToSuperview().offset(-50)
            make.height.equalTo(40)
        }
        facebookButton.snp.makeConstraints {make in
            make.top.equalTo(connectWithLabel.snp.bottom).offset(15)
            make.leading.equalToSuperview().offset(30)
            make.trailing.equalToSuperview().offset(-210)
            make.height.equalTo(30)
        }
        textFieldFB.snp.makeConstraints {make in
                make.top.equalTo(connectWithLabel.snp.bottom).offset(15)
                make.leading.equalToSuperview().offset(25)
                make.trailing.equalToSuperview().offset(-320)
                make.height.equalTo(30)
            }
        twitterButton.snp.makeConstraints {make in
            make.top.equalTo(connectWithLabel.snp.bottom).offset(15)
            make.leading.equalToSuperview().offset(210)
            make.trailing.equalToSuperview().offset(-30)
            make.height.equalTo(30)
        }
        textFieldTw.snp.makeConstraints {make in
                make.top.equalTo(connectWithLabel.snp.bottom).offset(15)
                make.leading.equalToSuperview().offset(205)
                make.trailing.equalToSuperview().offset(-180)
                make.height.equalTo(30)
            }
        accountLabel.snp.makeConstraints {make in
                make.top.equalTo(twitterButton.snp.bottom).offset(30)
                make.leading.equalToSuperview().offset(30)
                make.trailing.equalToSuperview().offset(-100)
                make.height.equalTo(30)
            }
        signUpLink.snp.makeConstraints {make in
                make.top.equalTo(twitterButton.snp.bottom).offset(30)
                make.leading.equalToSuperview().offset(180)
                make.trailing.equalToSuperview().offset(-30)
                make.height.equalTo(30)
            }
    }
}

extension UITextField {
    func setLeftIcon(_ image: UIImage?) {
        let iconView = UIImageView(frame: CGRect(x: 20, y: 5, width: 20, height: 20))
        iconView.image = image
        let iconContainerView: UIView = UIView(frame: CGRect(x: 20, y: 0, width: 30, height: 30))
        iconContainerView.addSubview(iconView)
        leftView = iconContainerView
        leftViewMode = .always
    }
    func setRightIcon(_ image: UIImage?) {
        let iconView = UIImageView(frame: CGRect(x: -10, y: 5, width: 20, height: 20))
        iconView.image = image
        let iconContainerView: UIView = UIView(frame: CGRect(x: -30, y: 0, width: 30, height: 30))
        iconContainerView.addSubview(iconView)
        rightView = iconContainerView
        rightViewMode = .always
    }
    func setImageToButton(icon: String) {
            let logo = UIImageView(image: UIImage(named: icon))
            logo.contentMode = .scaleAspectFit
            logo.translatesAutoresizingMaskIntoConstraints = false
            self.addSubview(logo)
            logo.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10).isActive = true
            logo.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
            logo.heightAnchor.constraint(equalToConstant: 30).isActive = true
            logo.widthAnchor.constraint(equalToConstant: 30).isActive = true
        }
}
