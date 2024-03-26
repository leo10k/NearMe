//
//  ViewController.swift
//  NearMe
//
//  Created by Leonardo Macedo on 25/03/24.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    
    lazy var mapView: MKMapView = {
        let map = MKMapView()
        //map.showsUserLocation = true
        map.translatesAutoresizingMaskIntoConstraints = false
        return map
    }()
    
    lazy var searchTextField: UITextField = {
        let searchTextField = UITextField()
        searchTextField.layer.cornerRadius = 10
        searchTextField.clipsToBounds = true
        searchTextField.backgroundColor = UIColor.white
        searchTextField.placeholder = "Search"
        searchTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        searchTextField.leftViewMode = .always
        searchTextField.translatesAutoresizingMaskIntoConstraints = false
        return searchTextField
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        setupUI()
    }
    
    private func setupUI() {
        
        
        view.addSubview(mapView)
        view.addSubview(searchTextField)
        
        view.bringSubviewToFront(searchTextField)
        
        let searchTextFieldConstraints = [
            searchTextField.heightAnchor.constraint(equalToConstant: 44),
            searchTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            searchTextField.widthAnchor.constraint(equalToConstant: view.bounds.size.width/1.2),
            searchTextField.topAnchor.constraint(equalTo: view.topAnchor, constant: 60)
        ]
        
        let mapViewConstraints = [
            mapView.widthAnchor.constraint(equalTo: view.widthAnchor),
            mapView.heightAnchor.constraint(equalTo: view.heightAnchor),
            mapView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            mapView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ]
        
        NSLayoutConstraint.activate(searchTextFieldConstraints)
        NSLayoutConstraint.activate(mapViewConstraints)
        
        searchTextField.returnKeyType = .go
    }

}

