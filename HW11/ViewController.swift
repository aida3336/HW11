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
        label.textAlignment = .center
        label.font = .boldSystemFont(ofSize: 26)
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
   setupViews()
  setupConstraints()
    }

// SETUP VIEWS
    
    private func setupViews() {
        view.backgroundColor = .systemPurple
        view.addSubview(titleLabel)
    }
// Setup Constraints
    private func setupConstraints() {
        titleLabel.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(50)
        }
    }
}

