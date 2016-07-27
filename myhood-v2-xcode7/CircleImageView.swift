//
//  CircleImageView.swift
//  myhood-v2-xcode7
//
//  Created by Hien Tran on 24/07/2016.
//  Copyright © 2016 HienTran. All rights reserved.
//

import UIKit

class CircleImageView: UIImageView {

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        layer.cornerRadius = layer.frame.height/2
        clipsToBounds = true
    }
    
    

}
