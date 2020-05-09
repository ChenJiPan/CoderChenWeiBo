//
//  DetailVC.swift
//  CoderChenWeiBo
//
//  Created by 陈良良 on 2020/5/9.
//  Copyright © 2020 陈良良. All rights reserved.
//

import SwiftUI

struct DetailVC: View {
    var weiboModel :WeiboModel
    
    var body: some View {
        List{
            PostCell(weiboModel: weiboModel)
                .listRowInsets(EdgeInsets())
            VStack(spacing:6){
                ForEach(0...10,id: \.self) {i in
                    VStack(alignment: .leading){
                        Text("评论\(i)")
                        Divider()
                    }
                }
                
            }
        }.navigationBarTitle("详情", displayMode: .inline)
        
    }
}


