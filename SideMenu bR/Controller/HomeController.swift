//
//  HomeController.swift
//  SideMenu bR
//
//  Created by be RUPU on 25/7/21.
//

protocol HomeControllereDelegate{
    func handleMenu()
}


import UIKit


class HomeController: UIViewController {
    
    var delegate: HomeControllereDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .lightGray
        configureNavBar()
    }
    
    
    func configureNavBar(){
        
        navigationController?.navigationBar.barTintColor = .darkGray
        navigationController?.navigationBar.barStyle = .black
        
        navigationItem.title = "Home"
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "lineweight"), style: .plain, target: self, action: #selector(handleMenuToggle))
    }
    
    
    @objc func handleMenuToggle(){
        delegate?.handleMenu()
    }
    
}
