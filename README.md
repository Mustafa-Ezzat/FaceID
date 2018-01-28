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

![Alt text](https://s10.postimg.org/tb27w9pp1/i_Phone_X-_Enrolled.png?raw=true "Enable Face ID")
![Alt text](https://s10.postimg.org/gjo1ps32d/i_Phone_X-_Matched.png?raw=true "Face ID matching")
![Alt text](https://s10.postimg.org/cnaptsad1/i_Phone_X-_Not_Matched.png?raw=true "Face ID not mathching")
![Alt text](https://s10.postimg.org/y8fshvce1/i_Phone6s-_Enrolled.png?raw=true "Enable Touch ID")
![Alt text](https://s10.postimg.org/v2v6r61c5/i_Phone6s-_Matched.png?raw=true "Touch ID matching")
![Alt text](https://s10.postimg.org/fu59ddzxx/i_Phone6s-_Not_Matched.png?raw=true "Touch ID not matching")


# Have a nice day :)
