//
//  ViewController.swift
//  URLSessionForINN(rusprofile)
//
//  Created by Иса on 20.11.2022.
//

import UIKit

class MainViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    
    @IBAction func showINN() {
        
        guard let url = URL(string: Link.urlOne.rawValue) else { return }
        URLSession.shared.dataTask(with: url) { data, _, error in
            
            guard let error = error else {
                print("Error")
                return
            }
            
            guard let data = data else { return }
            
            print(data)

        }.resume()
        
    }
    
}

