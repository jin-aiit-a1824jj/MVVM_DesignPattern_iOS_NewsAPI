//
//  NewsListTableViewController.swift
//  GoodNew_sampel
//
//  Created by JONGWOO JIN on 2020/03/30.
//  Copyright © 2020 JONGWOO JIN. All rights reserved.
//

import Foundation
import UIKit

class NewsListTableViewController: UITableViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup(){
        self.navigationController?.navigationBar.prefersLargeTitles = true
        let url = URL(string: "http://newsapi.org/v2/top-headlines?country=jp&apiKey=d711597c33e147b9a75b2d55ae0f08c6")!
        Webservices().getArticles(url: url){ _ in
            
        }
    }
    
}
