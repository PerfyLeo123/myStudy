//
//  SiderBarHeaderView.swift
//  ofo
//
//  Created by perfy on 2018/4/10.
//  Copyright © 2018年 perfy. All rights reserved.
//

import UIKit

class SiderBarHeaderView: UIView {
    
    @IBOutlet weak var iconImageView: UIImageView!
    
    @IBOutlet weak var certImageView: UIImageView!
    
    @IBOutlet weak var certLabel: UILabel!
    
    @IBOutlet weak var creditLabel: UILabel!
    
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.initView()
    }

    
    func initView() {
        
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
