//
//  LocaLAuthViewController.swift
//  FaceID
//
//  Created by Mustafa Ezzat on 1/27/18.
//  Copyright © 2018 Waqood. All rights reserved.
//

import UIKit

class LocaLAuthViewController: BaseViewController {

    let localAuth = LocalAuth()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
}

extension LocaLAuthViewController: LocalAuthDelegate{
    func pass() {
        performSegue(withIdentifier: AppConstant.Segue.Valid, sender: self)
    }
    
    func fail() {
        performSegue(withIdentifier: AppConstant.Segue.Invalid, sender: self)
    }
    
    func noSupported() {
        performSegue(withIdentifier: AppConstant.Segue.Home, sender: self)
    }
}

