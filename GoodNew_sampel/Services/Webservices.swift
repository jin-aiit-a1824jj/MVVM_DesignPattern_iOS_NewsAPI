//
//  Webservices.swift
//  GoodNew_sampel
//
//  Created by JONGWOO JIN on 2020/03/30.
//  Copyright © 2020 JONGWOO JIN. All rights reserved.
//

import Foundation

class Webservices {
    
    func getArticles(url: URL, completion: @escaping ([Article]?) ->()){
        URLSession.shared.dataTask(with: url){ data, response, error in
                
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            }else if let data = data {
                
                let articleList = try? JSONDecoder().decode(ArticleList.self, from: data)
                
                if let articleList = articleList {
                    completion(articleList.articles)
                }
                
                print(articleList?.articles)
            }
            
        }.resume()
    }
}
