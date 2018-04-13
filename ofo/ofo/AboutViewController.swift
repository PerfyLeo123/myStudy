//
//  AboutViewController.swift
//  ofo
//
//  Created by perfy on 2018/4/12.
//  Copyright © 2018年 perfy. All rights reserved.
//

import UIKit
import SWRevealViewController

class AboutViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
