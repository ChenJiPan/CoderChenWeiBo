//
//  RecommendVC.swift
//  CoderChenWeiBo
//
//  Created by 陈良良 on 2020/5/9.
//  Copyright © 2020 陈良良. All rights reserved.
//

import SwiftUI

struct RecommendVC: View {
    var body: some View {
        List{
            ForEach(weiboList.list,id: \.id) {weiboModel in
                ZStack{
                    PostCell(weiboModel: weiboModel)
                    NavigationLink(destination: DetailVC(weiboModel:weiboModel)) {
                        EmptyView()
                    }.hidden()
                }
                .listRowInsets(EdgeInsets())
            }
        }
    }
}
