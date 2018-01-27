//
//  ValidViewController.swift
//  FaceID
//
//  Created by Mustafa Ezzat on 1/27/18.
//  Copyright © 2018 Waqood. All rights reserved.
//

import UIKit

class ValidViewController: BaseViewController {

    var timer: Timer?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        startTimer()
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
    
    func startTimer() {
        timer = Timer.scheduledTimer(timeInterval: 3, target: self,
                                     selector: #selector(stopTimer), userInfo: nil, repeats: false)
    }

    @objc func stopTimer() {
        timer = nil
        performSegue(withIdentifier: AppConstant.Segue.Home, sender: self)
    }

}
