//
//  ViewController.swift
//  Animation2
//
//  Created by Cameron Rivera on 2/5/20.
//  Copyright © 2020 Cameron Rivera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   private let mainView = MainView()
    
    override func loadView(){
        view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setUp()
    }
    
    private func setUp(){
        mainView.linearButton.addTarget(self, action: #selector(toggledLinearButton), for: .touchUpInside)
        mainView.easeInButton.addTarget(self, action: #selector(toggledEaseInButton), for: .touchUpInside)
        mainView.easeOutButton.addTarget(self, action: #selector(toggledEaseOutButton), for: .touchUpInside)
        mainView.easeInEaseOutButton.addTarget(self, action: #selector(toggledEaseInEaseOutButton), for: .touchUpInside)
        mainView.resetButton.addTarget(self, action: #selector(resetMoon), for: .touchUpInside)
        mainView.animateButton.addTarget(self, action: #selector(animate), for: .touchUpInside)
    }
    
    @IBAction func toggledLinearButton(_ sender: UIButton){
        mainView.linearMoon.isHidden.toggle()
    }
    
    @IBAction func toggledEaseInButton(_ sender: UIButton){
        mainView.easeInMoon.isHidden.toggle()
    }
    
    @IBAction func toggledEaseOutButton(_ sender: UIButton){
        mainView.easeOutMoon.isHidden.toggle()
    }
    
    @IBAction func toggledEaseInEaseOutButton(_ sender: UIButton){
        mainView.easeInEaseOutMoon.isHidden.toggle()
    }
    
    @IBAction func resetMoon(_ sender: UIButton){
        UIView.animate(withDuration: 0.0) {
            self.mainView.linearMoon.transform = CGAffineTransform(translationX: 0.0, y: 0.0)
            self.mainView.easeInMoon.transform = CGAffineTransform(translationX: 0.0, y: 0.0)
            self.mainView.easeOutMoon.transform = CGAffineTransform(translationX: 0.0, y: 0.0)
            self.mainView.easeInEaseOutMoon.transform = CGAffineTransform(translationX: 0.0, y: 0.0)
        }
    }
    
    @IBAction func animate(_ sender: UIButton) {
        UIView.animate(withDuration: 3.0, delay: 0.0, options: [.curveLinear], animations: {
            self.mainView.linearMoon.transform = CGAffineTransform.init(translationX: 0, y: UIScreen.main.bounds.size.height * 0.76)
        }, completion: { done in
            self.view.layoutIfNeeded()
        })
        
        UIView.animate(withDuration: 3.0, delay: 0.0, options: [.curveEaseIn], animations: {
            self.mainView.easeInMoon.transform = CGAffineTransform.init(translationX: 0, y: UIScreen.main.bounds.size.height * 0.76)
        }, completion: { done in
            self.view.layoutIfNeeded()
        })
        
        UIView.animate(withDuration: 3.0, delay: 0.0, options: [.curveEaseOut], animations: {
            self.mainView.easeOutMoon.transform = CGAffineTransform.init(translationX: 0.0, y: UIScreen.main.bounds.size.height * 0.76)
        }) { done in
            self.view.layoutIfNeeded()
        }
        
        UIView.animate(withDuration: 3.0, delay: 0.0, options: [.curveEaseInOut], animations: {
            self.mainView.easeInEaseOutMoon.transform = CGAffineTransform(translationX: 0.0, y: UIScreen.main.bounds.size.height * 0.76)
        }) { done in
            self.view.layoutIfNeeded()
        }
    }
}

