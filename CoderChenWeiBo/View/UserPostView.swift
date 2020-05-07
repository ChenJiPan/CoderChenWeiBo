//
//  UserPostView.swift
//  CoderChenWeiBo
//
//  Created by 陈良良 on 2020/5/7.
//  Copyright © 2020 陈良良. All rights reserved.
//

import SwiftUI

struct UserPostView: View {
    let weiboModel:WeiboModel
    var body: some View {
        VStack(alignment: .leading){
            Text(weiboModel.text)
                .font(.system(size: 16))
                .foregroundColor(Color.black)
                .lineSpacing(5)
            
            if !weiboModel.images.isEmpty {
                Image(uiImage: UIImage(named: weiboModel.images[0])!)
                    .resizable()
                    .scaledToFill()
                    .frame(width:UIScreen.main.bounds.width - 20,height:(UIScreen.main.bounds.width - 20) * 0.75)
                    .clipped()
            }
            
            Divider()
        }
    }
}

