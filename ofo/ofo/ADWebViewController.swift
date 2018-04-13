//
//  ADWebViewController.swift
//  ofo
//
//  Created by perfy on 2018/4/10.
//  Copyright © 2018年 perfy. All rights reserved.
//

import UIKit
import WebKit

class ADWebViewController: UIViewController {

    var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "热门活动"
        
        self.initView()
        self.initData()
    }
    func initView() {
        webView = WKWebView(frame: self.view.bounds)
        self.view.addSubview(webView);
    }
    func initData() {
        let url = URL(string: "http://m.ofo.so/active.html")!
        let request = URLRequest(url: url)
        webView.load(request)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func webViewDidStartLoad(_ webView: UIWebView) {
        print("加载开始")
    }
    func webViewDidFinishLoad(_ webView: UIWebView) {
        print("页面加载完成")
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
