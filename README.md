# FaceID
Local auth through Touch ID or Face ID

# Install

# manual

by drag the LocalAuth.swift file from /Source forlder to your project

# cocoapods

pod 'FaceID'

# Usage 

import UIKit
import FaceID

class ViewController: UIViewController {

    let localAuth = LocalAuth()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        localAuth.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        localAuth.startAuthentication()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension ViewController: LocalAuthDelegate{
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

# Have a nice day :)