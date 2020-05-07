//
//  PostCell.swift
//  CoderChenWeiBo
//
//  Created by 陈良良 on 2020/5/7.
//  Copyright © 2020 陈良良. All rights reserved.
//

import SwiftUI

struct PostCell: View {
    
    let weiboModel :WeiboModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            UserTitleView(weiboModel:weiboModel)
            UserPostView(weiboModel: weiboModel)
            
            HStack{
                Spacer()
                UserPostButton(image: "message", text: weiboModel.commetnCountText, color: Color.gray) {
                    
                    print("评论")
                }
                Spacer()
                UserPostButton(image: "heart", text: weiboModel.likeCountText, color: Color.gray) {
                    
                    print("点赞")
                }
                Spacer()
            }.padding(.top,5)
            
        }.padding(.horizontal,10)
    }
}

