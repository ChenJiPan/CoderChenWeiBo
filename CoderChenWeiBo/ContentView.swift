//
//  ContentView.swift
//  CoderChenWeiBo
//
//  Created by 陈良良 on 2020/5/7.
//  Copyright © 2020 陈良良. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        List{
            ForEach(weiboList.list,id: \.id) {weiboModel in
                PostCell(weiboModel: weiboModel)
                    .listRowInsets(EdgeInsets())
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
