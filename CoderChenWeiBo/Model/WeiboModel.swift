//
//  WeiboModel.swift
//  CoderChenWeiBo
//
//  Created by 陈良良 on 2020/5/7.
//  Copyright © 2020 陈良良. All rights reserved.
//

import SwiftUI

struct WeiboListModel:Codable {
    let list: [WeiboModel]
}

struct WeiboModel:Codable {
    let id: Int
    let avatar: String
    var vip: Bool
    let name: String
    let date: String
    var isFollowed: Bool
    let text: String
    let images: [String]
    let commentCount: Int
    let likeCount: Int
    var isLiked: Bool
}

extension WeiboModel{
    var commetnCountText: String{
        if commentCount <= 0 {return "评论"}
        
        if commentCount < 1000 {return "\(commentCount)"}
        
        return String(format: "%.1fk", Double(commentCount) / 1000)
    }
    
    var likeCountText:String{
        if likeCount <= 0 {return "点赞"}
        if likeCount < 1000 {return "\(likeCount)"}
        return String(format: "%.1fk", Double(likeCount) / 1000)
    }
}

let weiboList = loadWeiboListData(fileName:"PostListData_recommend_1.json")

func loadWeiboListData(fileName:String) -> WeiboListModel {
    guard let url = Bundle.main.url(forResource: fileName, withExtension: nil) else{
        fatalError("路径失败")
    }
    
    guard let data = try? Data(contentsOf: url) else {
        fatalError("数据失败")
    }
    
    guard let list = try? JSONDecoder().decode(WeiboListModel.self, from: data) else {
        fatalError("转json数据")
    }
    return list
}


