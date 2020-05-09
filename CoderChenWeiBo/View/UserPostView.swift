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
        
        Text(weiboModel.text)
            .font(.system(size: 16))
            .foregroundColor(Color.black)
            .lineSpacing(5)
    }
}

