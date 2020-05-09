//
//  UserPostButtonView.swift
//  CoderChenWeiBo
//
//  Created by 陈良良 on 2020/5/7.
//  Copyright © 2020 陈良良. All rights reserved.
//

import SwiftUI

struct UserPostButton: View {
    
    let image: String
    let text: String
    let color: Color
    let action: () -> Void
    
    var body: some View {
        
        Button(action: action) {
            HStack{
                Image(systemName: image)
                    .resizable()
                    .scaledToFit()
                    .frame(width:18,height: 18)
                
                Text(text).font(.system(size: 15))
            }
            
        }.foregroundColor(color).buttonStyle(BorderlessButtonStyle())
    }
}

