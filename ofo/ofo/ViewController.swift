//
//  ViewController.swift
//  ofo
//
//  Created by perfy on 2018/4/9.
//  Copyright © 2018年 perfy. All rights reserved.
//

import UIKit
import SWRevealViewController

class ViewController: UIViewController,MAMapViewDelegate {

    var mapView: MAMapView!
    
    @IBOutlet weak var panelView: UIView!
    @IBAction func locationBtnClick(_ sender: UIButton) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView = MAMapView(frame: view.bounds)
        view.addSubview(mapView)
        view.bringSubview(toFront: panelView)
        mapView.delegate = self
        
        self.navigationItem.titleView = UIImageView(image:#imageLiteral(resourceName: "ofoLogo"))
        self.navigationItem.leftBarButtonItem?.image = #imageLiteral(resourceName: "leftTopImage").withRenderingMode(.alwaysOriginal)
        self.navigationItem.rightBarButtonItem?.image = #imageLiteral(resourceName: "rightTopImage").withRenderingMode(.alwaysOriginal)
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        
        if let siderCtr = revealViewController() {
            
            siderCtr.rearViewRevealWidth = 300
            navigationItem.leftBarButtonItem?.target = siderCtr
            navigationItem.leftBarButtonItem?.action = #selector(SWRevealViewController.revealToggle(_:))
            view.addGestureRecognizer(siderCtr.panGestureRecognizer())

        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

