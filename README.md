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

# Test on simulators

I don't have iPhone-X, don't worry :)

# Test Face ID on iPhone-X simulator

1- run your app on iPhone-X simulator and enable face id

![Alt text](https://s10.postimg.org/jdr737i3d/i_Phone_X-_Enrolled.png?raw=true "Enable Face ID")

2- test matching

![Alt text](https://s10.postimg.org/ymh4gzyx5/i_Phone_X-_Matched.png?raw=true "Face ID matching")

3- test not matching

![Alt text](https://s10.postimg.org/tb27wa54p/i_Phone_X-_Not_Matched.png?raw=true "Face ID not mathching")

# Test Touch ID on iPhone-6s simulator

1- run your app on iPhone-6s simulator and enable touch id

![Alt text](https://s10.postimg.org/y8fshvce1/i_Phone6s-_Enrolled.png?raw=true "Enable Touch ID")

2- test matching

![Alt text](https://s10.postimg.org/zbzwtc4ll/i_Phone6s-_Matched.png?raw=true "Touch ID matching")

3- test not matching

![Alt text](https://s10.postimg.org/y9pqase2h/i_Phone6s-_Not_Matched.png?raw=true "Touch ID not matching")


# Have a nice day :)
