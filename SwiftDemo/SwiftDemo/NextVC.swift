//
//  NextVC.swift
//  
//
//  Created by GadgetZone on 27/02/16.
//
//

import UIKit

class NextVC: UIViewController,UITableViewDataSource,UITableViewDelegate {

    var arr:[String]=["jas","bharat","haris","jabir"]
    @IBOutlet var tblView: UITableView!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.tblView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "reuse")
        tblView.bounces=false
        self.jsonCall()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func myMethod(str:String)
    {
        print("hii\(str)")
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        var cell:UITableViewCell=self.tblView.dequeueReusableCellWithIdentifier("reuse") as! UITableViewCell
        cell=UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "reuse")
         cell.selectionStyle = UITableViewCellSelectionStyle.None
        cell.textLabel?.text=arr[indexPath.row]
        cell.detailTextLabel?.text=arr[indexPath.row]
        return cell
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return arr.count;
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("selected indexpath \(indexPath.row)")
    }
    func jsonCall()
    {
    }
}
