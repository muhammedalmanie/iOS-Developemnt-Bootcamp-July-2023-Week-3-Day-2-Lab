//
//  ViewController.swift
//  MyUIKitProject
//
//  Created by Muhammed on 8/7/23.
//

import Foundation
import UIKit
import SnapKit

class ViewController: UIViewController{
    
    let mostPopular: MostPopular = .init()
    let lifestyle: Lifestyle = .init()
    let health: Health = .init()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Personalize your feed"
        label.font = UIFont.boldSystemFont(ofSize: 24)
        return label
    }()
    
    let subtitleLabel: UILabel = {
        let label = UILabel()
        label.text = "Select 10 or more topics"
        label.textColor = .gray
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }()
    
    let actionButton: UIButton = {
        let button = UIButton()
        button.setTitle("0 Selected", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.backgroundColor = .gray
        button.layer.cornerRadius = 8
        return button
    }()
    
    let buttonBackgroundView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()
    
    let mostPopularTitleLabel: UILabel = {
        let label = UILabel()
        label.text = "Most Popular"
        label.font = UIFont.boldSystemFont(ofSize: 18)
        return label
    }()
    
    let lifestyleTitleLabel: UILabel = {
        let label = UILabel()
        label.text = "Lifestyle"
        label.font = UIFont.boldSystemFont(ofSize: 18)
        return label
    }()
    
    let healthTitleLabel: UILabel = {
        let label = UILabel()
        label.text = "Health"
        label.font = UIFont.boldSystemFont(ofSize: 18)
        return label
    }()

    
    override func viewDidLoad(){
        super.viewDidLoad()
        self.view.backgroundColor = .white
        configureTitle() //
        configureMostPopular()
        configureLifestyle()
        configureHealth()
        configureActionButton()
    }
    
    
    func configureTitle() {
        self.view.addSubview(titleLabel)
        titleLabel.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalTo(90)
        }
        self.view.addSubview(subtitleLabel)
        subtitleLabel.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalTo(titleLabel.snp.bottom).offset(4)
        }
    }
    
    
    func configureActionButton() {
        self.view.addSubview(buttonBackgroundView)
        buttonBackgroundView.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.bottom.equalToSuperview().offset(-40)
            $0.width.equalToSuperview()
            $0.height.equalTo(70)
        }
        
        buttonBackgroundView.addSubview(actionButton)
        actionButton.snp.makeConstraints {
            $0.centerX.centerY.equalToSuperview()
            $0.width.equalTo(280)
            $0.height.equalTo(44)
        }
    }

    
    func configureMostPopular() {
        self.view.addSubview(mostPopularTitleLabel)
        mostPopularTitleLabel.snp.makeConstraints {
            $0.top.equalTo(160)
            $0.leading.equalTo(16)
        }
        self.view.addSubview(mostPopular)
        mostPopular.snp.makeConstraints {
            $0.top.equalTo(mostPopularTitleLabel.snp.bottom).offset(8)
            $0.width.equalTo(self.view.frame.width - 32)
            $0.height.equalTo(180)
            $0.leading.equalTo(16)
        }
    }

    
    func configureLifestyle() {
        self.view.addSubview(lifestyleTitleLabel)
        lifestyleTitleLabel.snp.makeConstraints {
            $0.top.equalTo(mostPopular.snp.bottom).offset(20)
            $0.leading.equalTo(16)
        }
        self.view.addSubview(lifestyle)
        lifestyle.snp.makeConstraints {
            $0.top.equalTo(lifestyleTitleLabel.snp.bottom).offset(8)
            $0.width.equalTo(self.view.frame.width - 32)
            $0.height.equalTo(210)
            $0.leading.equalTo(16)
        }
    }
    
    
    func configureHealth(){
        self.view.addSubview(healthTitleLabel)
        healthTitleLabel.snp.makeConstraints {
            $0.top.equalTo(lifestyle.snp.bottom).offset(45)
            $0.leading.equalTo(20)
        }
        self.view.addSubview(health)
        health.snp.makeConstraints{
            $0.top.equalTo(healthTitleLabel.snp.bottom).offset(8)
            $0.width.equalTo(self.view.frame.width - 32)
            $0.height.equalTo(200)
            $0.leading.equalTo(16)
        }
    }
}



