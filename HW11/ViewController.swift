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
        textField.placeholder = "Write your login"
        textField.textAlignment = .center
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
        textFieldPassword.placeholder = "Password"
        textFieldPassword.textAlignment = .center
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
}
