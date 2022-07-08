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
        
        //creating object
        let url = URL(string: myUrl)
        print(url)
        
        
        guard url != nil else {
            return
        }
            
        //creating session
        let session = URLSession.shared
        
        let dataTask = session.dataTask(with: url!) { data, response, error in
            
            guard  error == nil && data != nil else{
                return
            }
            do{
               
                let decoder = JSONDecoder()
                //JSON PARSING
                let newsFeed = try decoder.decode(NewsFeed.self, from: data!)
                print(newsFeed)
                
            }
            catch{
                print("Error parsing JSON")
            }
        }
        //calls API
        dataTask.resume()
    }


}

