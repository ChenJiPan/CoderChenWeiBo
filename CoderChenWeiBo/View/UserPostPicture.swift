//
//  UserPostPicture.swift
//  CoderChenWeiBo
//
//  Created by 陈良良 on 2020/5/8.
//  Copyright © 2020 陈良良. All rights reserved.
//

import SwiftUI

private let kImageSpace:CGFloat = 6.0
private let kWidth: CGFloat = UIScreen.main.bounds.width - 20


struct UserPostPicture: View {
    let images :[String]
    var body: some View {
        
        Group{
            if images.count == 1 {
                Image(uiImage: UIImage(named: images[0])!)
                    .resizable()
                    .scaledToFill()
                    .frame(width:UIScreen.main.bounds.width - 20,height:(UIScreen.main.bounds.width - 20) * 0.75)
                    .clipped()
                
            }else if images.count == 2 || images.count == 3{
                UserRowPicture(images: Array(images[0...images.count - 1]))
            }else if images.count == 4 || images.count == 5{
                VStack(spacing:kImageSpace){
                    UserRowPicture(images: Array(images[0...1]))
                    UserRowPicture(images: Array(images[2...images.count - 1]))
                }
                
            }else if images.count == 6{
                VStack(spacing:kImageSpace){
                    UserRowPicture(images: Array(images[0...2]))
                    UserRowPicture(images: Array(images[3...5]))
                }
            }
        }
    }
}

private struct UserRowPicture: View{
    let images:[String]
    var body: some View {
        HStack(spacing:kImageSpace){
            ForEach(images, id: \.self) {image in
                Image(uiImage: UIImage(named: image)!)
                    .resizable()
                    .scaledToFill()
                    .frame(width:(kWidth - kImageSpace * CGFloat(self.images.count - 1)) / CGFloat(self.images.count),height: (kWidth - kImageSpace * CGFloat(self.images.count - 1)) / CGFloat(self.images.count))
                    .clipped()
            }
        }
    }
}


