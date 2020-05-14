//
//  HomeVC.swift
//  CoderChenWeiBo
//
//  Created by 陈良良 on 2020/5/9.
//  Copyright © 2020 陈良良. All rights reserved.
//

import SwiftUI

struct HomeVC: View {
    init() {
        UITableView.appearance().separatorStyle = .none//去除下划线
        UITableViewCell.appearance().selectionStyle = .none //去除点击效果
    }
    
    var body: some View {
        VStack(spacing:0){
            NavigationBarTitle()
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing:0){
                    RecommendVC().frame(width:UIScreen.main.bounds.width)
                    HotVC().frame(width:UIScreen.main.bounds.width)
                }
            }
        }
    }
}

