# FaceID
Local auth through Touch ID or Face ID

# Install

# manual

by drag the LocalAuth.swift file from /Source forlder to your project

# cocoapods

pod 'FaceID'

cocoapods tutorial: https://cocoapods.org

# Usage 

import UIKit

import FaceID

class LocaLAuthViewController: BaseViewController {

    // BaseViewController inherit from UIViewController
    
    let localAuth = LocalAuth()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        localAuth.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        localAuth.checkAuthentication()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

extension LocaLAuthViewController: LocalAuthDelegate
{

    func pass() {
        // code for path here
        print("Pass...")
    }
    
    func fail() {
        // code for fail here
        print("Fail...")
    }
    
    func noSupported() {
        // code if your device not support touch id or face id here
        print("Not supported...")
    }
    
}

[url=https://postimg.org/image/cys670w39/][img]https://s10.postimg.org/cys670w39/i_Phone6s-_Enrolled.png[/img][/url]



# Have a nice day :)
