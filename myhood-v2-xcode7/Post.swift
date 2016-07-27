//
//  Post.swift
//  myhood-v2-xcode7
//
//  Created by Hien Tran on 24/07/2016.
//  Copyright © 2016 HienTran. All rights reserved.
//

import Foundation

class Post: NSObject, NSCoding {
    private var _imgPath: String!
    private var _title: String!
    private var _desc: String!
    
    init(imgPath: String, title: String, desc: String){
        self._imgPath = imgPath
        self._title = title
        self._desc = desc
    }
    
    var imgPath: String {
        return _imgPath
    }
    
    var title: String {
        return _title
    }
    
    var desc: String {
        return _desc
    }
    
    override init() {
        
    }
    
    required convenience init?(coder aDecoder: NSCoder) {
        self.init()
        self._imgPath = aDecoder.decodeObjectForKey("imgPath") as? String
        self._title = aDecoder.decodeObjectForKey("title") as? String
        self._desc = aDecoder.decodeObjectForKey("description") as? String
    }
    
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(self._imgPath, forKey: "imgPath")
        aCoder.encodeObject(self._title, forKey: "title")
        aCoder.encodeObject(self._desc, forKey: "description")
    }
    
}