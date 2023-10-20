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
        return textFieldPassword
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
        }
        viewDidLayoutSubviews()
        
    }
    
    // Setup Views
    
    private func setupViews() {
        view.backgroundColor = .systemPurple
        view.addSubview(titleLabel)
        view.addSubview(textField)
        view.addSubview(textFieldPassword)
    }
    // Setup Constraints
    private func setupConstraints() {
        titleLabel.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(50)
        }∏
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
    }
}

extension UITextField {
    func setLeftIcon(_ image: UIImage?) {
        let iconView = UIImageView(frame: CGRect(x: 30, y: 5, width: 20, height: 20))
        iconView.image = image
        let iconContainerView: UIView = UIView(frame: CGRect(x: 30, y: 0, width: 30, height: 30))
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
