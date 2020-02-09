//
//  MainView.swift
//  Animation2
//
//  Created by Cameron Rivera on 2/5/20.
//  Copyright © 2020 Cameron Rivera. All rights reserved.
//

import UIKit

class MainView: UIView {

    public lazy var linearButton: UIButton = {
       let button = UIButton()
        button.setTitle("Linear", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        return button
    }()
    
    public lazy var easeInButton: UIButton = {
        let button = UIButton()
        button.setTitle("Ease In", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        return button
    }()
    
    public lazy var easeOutButton: UIButton = {
       let button = UIButton()
        button.setTitle("Ease Out", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        return button
    }()
    
    public lazy var easeInEaseOutButton: UIButton = {
       let button = UIButton()
        button.setTitle("EaseInEaseOut", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        return button
    }()
    
    public lazy var topButtonStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .equalSpacing
        stackView.backgroundColor = .brown
        return stackView
    }()
    
    public lazy var resetButton: UIButton = {
       let button = UIButton()
        button.setTitle("Reset", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        return button
    }()
    
    public lazy var animateButton: UIButton = {
        let button = UIButton()
        button.setTitle("Animate", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        return button
    }()
    
    public lazy var bottomButtonsStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .equalSpacing
        return stackView
    }()
    
    public lazy var linearMoon: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "moon")
        return image
    }()
    
    public lazy var easeInMoon: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "moon")
        return image
    }()
    
    public lazy var easeOutMoon: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "moon")
        return image
    }()
    
    public lazy var easeInEaseOutMoon: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "moon")
        return image
    }()
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit(){
        setUpTopButtonStackViewConstraints()
        setUpBottomButtonStackViewConstraints()
        setUpLinearMoonConstraints()
        setUpEaseInMoonConstraints()
        setUpEaseOutMoonConstraints()
        setUpEaseInEaseOutMoonConstraints()
    }
    
    private func setUpTopButtonStackViewConstraints(){
        addSubview(topButtonStackView)
        
        topButtonStackView.addArrangedSubview(linearButton)
        topButtonStackView.addArrangedSubview(easeInButton)
        topButtonStackView.addArrangedSubview(easeOutButton)
        topButtonStackView.addArrangedSubview(easeInEaseOutButton)
        topButtonStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([topButtonStackView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor), topButtonStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8), topButtonStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8)])
    }
    
    private func setUpBottomButtonStackViewConstraints(){
        addSubview(bottomButtonsStackView)
        
        bottomButtonsStackView.addArrangedSubview(resetButton)
        bottomButtonsStackView.addArrangedSubview(animateButton)
        
        bottomButtonsStackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([bottomButtonsStackView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor), bottomButtonsStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8), bottomButtonsStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8)])
    }
    
    private func setUpLinearMoonConstraints(){
        addSubview(linearMoon)
        
        linearMoon.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([linearMoon.topAnchor.constraint(equalTo: topButtonStackView.bottomAnchor, constant: 20), linearMoon.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8), linearMoon.heightAnchor.constraint(equalToConstant: 50), linearMoon.widthAnchor.constraint(equalToConstant: 50), easeOutMoon.widthAnchor.constraint(equalToConstant: 50), easeInEaseOutMoon.widthAnchor.constraint(equalToConstant: 50)])
    }
    
    private func setUpEaseInMoonConstraints(){
        addSubview(easeInMoon)
        easeInMoon.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([easeInMoon.topAnchor.constraint(equalTo: topButtonStackView.bottomAnchor, constant: 20), easeInMoon.leadingAnchor.constraint(equalTo: linearMoon.trailingAnchor, constant: 35), easeInMoon.widthAnchor.constraint(equalToConstant: 50), easeInMoon.heightAnchor.constraint(equalToConstant: 50) ])
    }
    
    private func setUpEaseOutMoonConstraints() {
        addSubview(easeOutMoon)
        easeOutMoon.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([easeOutMoon.topAnchor.constraint(equalTo: topButtonStackView.bottomAnchor, constant: 20), easeOutMoon.leadingAnchor.constraint(equalTo: easeInMoon.trailingAnchor, constant: 50), easeOutMoon.heightAnchor.constraint(equalToConstant: 50), easeOutMoon.widthAnchor.constraint(equalToConstant: 50)])
    }
    
    private func setUpEaseInEaseOutMoonConstraints(){
        addSubview(easeInEaseOutMoon)
        easeInEaseOutMoon.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([easeInEaseOutMoon.topAnchor.constraint(equalTo: topButtonStackView.bottomAnchor, constant: 20), easeInEaseOutMoon.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40), easeInEaseOutMoon.heightAnchor.constraint(equalToConstant: 50), easeInEaseOutMoon.widthAnchor.constraint(equalToConstant: 50)])
    }
}
