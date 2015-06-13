//
//  LoginViewController.swift
//  lambda
//
//  Created by Brian Cooley on 5/16/15.
//  Copyright (c) 2015 Cooley Mobile Development LLC. All rights reserved.
//

import UIKit
import TwitterKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let twitterLogInButton = TWTRLogInButton(logInCompletion: {
            (session: TWTRSession!, error: NSError!) in
            // play with Twitter session
        })
        twitterLogInButton.center = self.view.center
        self.view.addSubview(twitterLogInButton)
        
        let facebookLoginButton = FBSDKLoginButton()
        let fbCenter = CGPointMake(self.view.center.x, self.view.center.y + 44)
        facebookLoginButton.center = fbCenter
        self.view.addSubview(facebookLoginButton)
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
