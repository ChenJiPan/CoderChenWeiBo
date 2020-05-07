//
//  UserTitleView.swift
//  CoderChenWeiBo
//
//  Created by 陈良良 on 2020/5/7.
//  Copyright © 2020 陈良良. All rights reserved.
//

import SwiftUI

struct UserTitleView: View {
    let weiboModel:WeiboModel
    var body: some View {
        HStack(spacing:5){
            Image(uiImage: UIImage(named: weiboModel.avatar)!)
                .resizable()
                .scaledToFill()
                .frame(width: 50, height: 50)
                .clipShape(Circle())
                .overlay(VipView().offset(x: 16, y: 16))
            
            VStack(alignment: .leading, spacing: 5){//纵向排列
                Text(weiboModel.name)
                    .font(Font.system(size: 16))
                    .foregroundColor(Color(red: 242/256, green: 99/256, blue: 4/256))
                    .lineLimit(1)
                Text(weiboModel.date).font(.system(size: 11)).foregroundColor(.gray)
            }.padding(.leading,10)
            
            Spacer()
            
            Button(action: {
                print("降低贷款")
            }) {
                Text("关注")
                    .font(.system(size: 14))
                    .foregroundColor(.orange)
                    .frame(width: 50, height: 26, alignment: .center)
                    .overlay(RoundedRectangle(cornerRadius: 13)
                        .stroke(Color.orange,lineWidth: 1))
            }
        }
    }
}
