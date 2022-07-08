//
//  ViewController.swift
//  JSON_Parsing
//
//  Created by Cumulations Technologies Private Limited on 08/07/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let myUrl = "https://newsapi.org/v2/everything?domains=wsj.com&apiKey=ce07b3ab9faa4659ba897245a3212174"
        
        let url = URL(string: myUrl)
        print(url)
    }


}

