//
//  PostCell.swift
//  myhood-v2-xcode7
//
//  Created by Hien Tran on 24/07/2016.
//  Copyright © 2016 HienTran. All rights reserved.
//

//import Cocoa
import UIKit
class PostCell: UITableViewCell {
    
    @IBOutlet weak var postImg: CircleImageView!
    @IBOutlet weak var postTitle: UILabel!
    @IBOutlet weak var postDesc: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configureCell(post: Post) {
        postImg.image = DataService.instance.imageForPath(post.imgPath)
        postTitle.text = post.title
        postDesc.text = post.desc
    }

}
