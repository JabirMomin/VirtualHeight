//
//  ViewController.swift
//  SwiftDemo
//
//  Created by GadgetZone on 27/02/16.
//  Copyright (c) 2016 GadgetZone. All rights reserved.
//

import UIKit


class ViewController: UIViewController
{

    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }

    @IBAction func actionNext(sender: AnyObject)
    {
        self.performSegueWithIdentifier("next", sender: self)
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier=="next"
        {
            var next=NextVC()
            next=segue.destinationViewController as! NextVC
            next.myMethod("jas")
        
        }
    }
}

