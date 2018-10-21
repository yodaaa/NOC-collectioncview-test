//
//  colleview.swift
//  collectioncview-test
//
//  Created by yodaaa on 2018/10/20.
//  Copyright © 2018年 yodaaa. All rights reserved.
//

import UIKit

class colleview: UIView {
    override init(frame: CGRect){
        super.init(frame: frame)
        loadNib()
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        loadNib()
    }
    
    func loadNib(){
        let view = Bundle.main.loadNibNamed("colleViewcell", owner: self, options: nil)?.first as! UIView
        view.frame = self.bounds
        self.addSubview(view)
    }
    
}
