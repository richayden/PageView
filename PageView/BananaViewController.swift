//
//  BananaViewController.swift
//  PageView
//
//  Created by Richard Hayden on 10/11/15.
//  Copyright © 2015 richayden. All rights reserved.
//

import UIKit

class BananaViewController: UIViewController {
    
    var bananaText: String?

    @IBOutlet weak var bananaLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
