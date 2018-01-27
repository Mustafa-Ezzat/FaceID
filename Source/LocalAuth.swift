//
//  LocalAuth.swift
//  FaceID
//
//  Created by Mustafa Ezzat on 1/27/18.
//  Copyright © 2018 Waqood. All rights reserved.
//

import UIKit
import LocalAuthentication

public protocol LocalAuthDelegate {
    func pass()
    func fail()
    func noSupported()
}

open class LocalAuth: NSObject {
    
    open var delegate:LocalAuthDelegate!
    
    open func startAuthentication() {
        let context = LAContext()
        var error: NSError?
        var description: String!
        
        // Touch ID・Face ID
        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
            switch context.biometryType {
            case .faceID:
                description = "Permission for access face id"
                break
            case .touchID:
                description = "Permission for access toch id"
                break
            case .none:
                description = "Your device not support face/touch id"
                break
            }
            
            context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: description, reply: {success, evaluateError in
                if (success) {
                    DispatchQueue.main.async {
                        //Pass
                        self.delegate.pass()
                    }
                } else {
                    DispatchQueue.main.async {
                        //Fail
                        self.delegate.fail()
                    }
                }
            })
        } else {
            // Touch ID・Face ID not supported
            self.delegate.noSupported()
        }
    }
    
}

