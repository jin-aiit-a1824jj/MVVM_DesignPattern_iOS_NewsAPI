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
        
    }
    
}
