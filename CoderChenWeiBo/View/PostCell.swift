//
//  PostCell.swift
//  CoderChenWeiBo
//
//  Created by 陈良良 on 2020/5/7.
//  Copyright © 2020 陈良良. All rights reserved.
//

import SwiftUI

struct PostCell: View {
    
    @State var weiboModel :WeiboModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            UserTitleView(weiboModel:weiboModel)
            UserPostView(weiboModel: weiboModel)
            UserPostPicture(images: weiboModel.images)
            Rectangle().padding(.horizontal,-18).frame(height:0.5).foregroundColor(Color.gray)
            
            HStack{
                Spacer()
                UserPostButton(image: "message", text: weiboModel.commetnCountText, color: Color.gray) {
                    print("评论")
                }
                Spacer()
                UserPostButton(image: "heart", text: weiboModel.likeCountText, color: weiboModel.isLiked ? Color.red : Color.gray) {
                    print("点赞")
                    self.weiboModel.isLiked = !self.weiboModel.isLiked
                    self.weiboModel.likeCount = self.weiboModel.isLiked ? self.weiboModel.likeCount + 1 : self.weiboModel.likeCount - 1
                }
                Spacer()
            }
            Rectangle()
                .padding(.horizontal,-18)
                .frame(height:5)
                .foregroundColor(Color(red: 240 / 256, green: 240 / 256, blue: 240 / 256))
            
        }.padding(.horizontal,10)
            .padding(.top,10)
    }
}

