//
//  Article.swift
//  GoodNew_sampel
//
//  Created by JONGWOO JIN on 2020/03/30.
//  Copyright © 2020 JONGWOO JIN. All rights reserved.
//

import Foundation

struct ArticleList: Decodable {
    let articles: [Article]
}

struct Article: Decodable {
    let title: String
    let description: String
}
