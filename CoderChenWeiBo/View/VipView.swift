//
//  VipView.swift
//  CoderChenWeiBo
//
//  Created by 陈良良 on 2020/5/7.
//  Copyright © 2020 陈良良. All rights reserved.
//

import SwiftUI

struct VipView: View {
    var body: some View {
        Text("V")
            .bold()
            .frame(width:15,height: 15)
            .font(.system(size: 11))
            .foregroundColor(Color.yellow)
            .background(Color.red)
            .clipShape(Circle())
            .overlay(RoundedRectangle(cornerRadius: 7.5).stroke(Color.white,lineWidth: 1))
        
    }
}

struct VipView_Previews: PreviewProvider {
    static var previews: some View {
        VipView()
    }
}
