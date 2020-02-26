//
//  ImagesModel.swift
//  QuestionApp01
//
//  Created by 中塚富士雄 on 2020/02/27.
//  Copyright © 2020 中塚富士雄. All rights reserved.
//

import Foundation

class imagesModel{
    
    let imageText:String?
    let answer:Bool
    
    init(imageName:String,correctOrNot:Bool){
        
        imageText = imageName
        
        answer = correctOrNot
        
    }
    
}
