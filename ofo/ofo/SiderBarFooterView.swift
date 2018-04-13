//
//  SiderBarFooterView.swift
//  ofo
//
//  Created by perfy on 2018/4/11.
//  Copyright © 2018年 perfy. All rights reserved.
//

import UIKit

class SiderBarFooterView: UIView {

    @IBOutlet weak var adImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.initView()
    }
    
    func initView() {
        adImageView = UIImageView.init(image: UIImage(named: "RedPacketBike"))
        
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
