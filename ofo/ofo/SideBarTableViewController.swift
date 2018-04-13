//
//  SideBarTableViewController.swift
//  ofo
//
//  Created by perfy on 2018/4/10.
//  Copyright © 2018年 perfy. All rights reserved.
//

import UIKit

class SideBarTableViewController: UITableViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        self.initView()
    }
    
    func initView() {
    
        let footView = Bundle.main.loadNibNamed("SiderBarFooterView", owner: nil, options: nil)?.first as! SiderBarFooterView
        self.tableView.tableFooterView = footView
        let headView = Bundle.main.loadNibNamed("SiderBarHeaderView", owner: nil, options: nil)?.first as! SiderBarHeaderView
        self.tableView.tableHeaderView = headView
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 6
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let indentifier = "myCell"
        var cell:UITableViewCell! = tableView.dequeueReusableCell(withIdentifier: indentifier)
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: indentifier)
            
        }
        switch indexPath.row {
        case 0:
            cell.imageView?.image = #imageLiteral(resourceName: "HomePage_MyStroke")
            cell.textLabel?.text = "我的行程"
        case 1:
            cell.imageView?.image = #imageLiteral(resourceName: "HomePage_MyWallet")
            cell.textLabel?.text = "我的钱包"
        case 2:
            cell.imageView?.image = #imageLiteral(resourceName: "HomePag_inviteCode")
            cell.textLabel?.text = "输入优惠吗"
        case 3:
            cell.imageView?.image = #imageLiteral(resourceName: "HomePage_Invite")
            cell.textLabel?.text = "邀请好友"
        case 4:
            cell.imageView?.image = #imageLiteral(resourceName: "HomePage_UserGuide")
            cell.textLabel?.text = "使用指南"
        default:
            cell.imageView?.image = #imageLiteral(resourceName: "HomePage_AboutUs")
            cell.textLabel?.text = "关于我们"
        }

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            
            break
        case 5:
            
            let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "AboutViewCtr")
                as! AboutViewController
            let nc = UINavigationController(rootViewController: vc)
            self.revealViewController().pushFrontViewController(nc, animated: true)
            
            
            break
        
        default: break
            
        }
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
}
