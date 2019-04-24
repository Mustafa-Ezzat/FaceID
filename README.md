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

Hardware -> Face ID -> Enrolled

2- Test Matching Face

Hardware -> Face ID -> Matching Face

3- Test Non-matching Face

Hardware -> Face ID -> Non-matching Face

# Test Touch ID on iPhone-6s simulator

1- run your app on iPhone-6s simulator and enable touch id

Hardware -> Face ID -> Enrolled

2- Test Matching Touch

Hardware -> Touch ID -> Matching Touch

3- Test Non-matching Touch

Hardware -> Touch ID -> Non-matching Touch


# Have a nice day :)
