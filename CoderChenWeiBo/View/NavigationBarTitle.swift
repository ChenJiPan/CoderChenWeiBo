//
//  NavigationBarTitle.swift
//  CoderChenWeiBo
//
//  Created by 陈良良 on 2020/5/9.
//  Copyright © 2020 陈良良. All rights reserved.
//

import SwiftUI

private let kTitleBox: CGFloat = UIScreen.main.bounds.width * 0.5
private let kTitleWidth:CGFloat = 60
private let kTitleHeight:CGFloat = 24



struct NavigationBarTitle: View {
    @State var percentIndex:CGFloat = 0
    
    var body: some View {
        
        VStack(spacing:3){
            HStack(alignment: .center, spacing: 0){
                Text("推荐")
                    .bold()
                    .frame(width:kTitleWidth,height:kTitleHeight)
                    .font(.system(size: 16))
                    .padding(.top,4)
                    .opacity(Double(1 - self.percentIndex * 0.5))
                    .onTapGesture {
                        withAnimation {
                            self.percentIndex = 0
                        }
                }
                Spacer()
                Text("热门")
                    .bold()
                    .frame(width:kTitleWidth,height:kTitleHeight)
                    .font(.system(size: 16))
                    .padding(.top,4)
                    .opacity(Double(0.5 + self.percentIndex * 0.5))
                    .onTapGesture {
                        withAnimation {
                            self.percentIndex = 1
                        }
                }
            }.frame(width:kTitleBox)
            
            Rectangle()
                .frame(height:0.5)
                .foregroundColor(.gray)
            
            Rectangle()
                .foregroundColor(.orange)
                .frame(width:20,height: 3)
                .padding(.top,-5)
                .offset(x: kTitleBox * (self.percentIndex - 0.5) + kTitleWidth * (0.5 - self.percentIndex))
        }
    }
}

