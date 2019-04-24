# FaceID
Local auth through Touch ID, Face ID Or Passcode

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

# Test on simulators

I don't have iPhone-X, don't worry :)

# Test Face ID on iPhone-X simulator

1- run your app on iPhone-X simulator and enable face id

![Alt text](https://s10.postimg.org/9r6kjc1rt/i_Phone_X-_Enrolled.png?raw=true "Enable Face ID")

2- test matching

![Alt text](https://s10.postimg.org/7mm7i97ux/i_Phone_X-_Matching.png?raw=true "Face ID matching")

3- test not matching

![Alt text](https://s10.postimg.org/t917z9qzt/i_Phone_X-_Not_Matching.png?raw=true "Face ID not mathching")

# Test Touch ID on iPhone-6s simulator

1- run your app on iPhone-6s simulator and enable touch id

![Alt text](https://s10.postimg.org/suzw054gp/i_Phone6s-_Enrolled.png?raw=true "Enable Touch ID")

2- test matching

![Alt text](https://s10.postimg.org/r4guy69xl/i_Phone6s-_Matching.png?raw=true "Touch ID matching")

3- test not matching

![Alt text](https://s10.postimg.org/6x3f5v4qh/i_Phone6s-_Not_Matching.png?raw=true "Touch ID not matching")



# Have a nice day :)
