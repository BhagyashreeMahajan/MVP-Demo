//
//  Utility.swift
//  TractorInstallation
//
//  Created by Mac Book on 14/08/18.
//  Copyright © 2018 mahindra. All rights reserved.
//

import UIKit
import MBProgressHUD

class Utility: NSObject {
    
    class func isInternetReachable() -> Bool{
        
        let reachability = Reachability()
        
        let networkStatus = reachability?.currentReachabilityStatus
        if networkStatus == .notReachable{
            return false
        }
        return true
    }
    
    class func isValidEmail(_ emailStr:String) -> Bool {
        
        if(emailStr == ""){
            return false
        }
        
        var emailRegEx =  "^[_A-Za-z0-9-]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.(?:[A-Z]{2,}|com|co)*(\\.(?:[A-Z]{2,}|us|in|ch|jp|uk)))+$"
        
        var emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        
        let success =  emailTest.evaluate(with: emailStr)
        
        if(!success) {
            
            emailRegEx = "^[_A-Za-z0-9-]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9-]+)*(\\.[A-Za-z]{3,})$";
            
            emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
            
            return emailTest.evaluate(with: emailStr)
            
        }
        
        return success;
        
    }
    
    class func isOnlyAlphanumeric(inputStr:String) -> Bool {
        var isValid:Bool = false
        if CharacterSet(charactersIn: "1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz").isSuperset(of: CharacterSet(charactersIn: inputStr))
        {
            isValid = true
        }
        else
        {
            isValid = false
        }
        return isValid
    }
    
    class func isOnlyCharacters (inputString:String)-> Bool
    {
        
        let allowedCharacters = CharacterSet.letters
        let characterSet = CharacterSet(charactersIn: inputString)
        if allowedCharacters.isSuperset(of: characterSet)
        {
            return true
        }
        else
        {
            return false
        }
    }
    
    class func isValidEmailId (inputString:String)-> Bool
    {
        
        var isValid:Bool = false
        if CharacterSet(charactersIn: "1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz@.").isSuperset(of: CharacterSet(charactersIn: inputString))
        {
            isValid = true
        }
        else
        {
            isValid = false
        }
        return isValid
    }
    
    class func isValidOpportunityName(inputStr:String) -> Bool {
        var isValid:Bool = false
        if CharacterSet(charactersIn: "-1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz").isSuperset(of: CharacterSet(charactersIn: inputStr))
        {
            isValid = true
        }
        else
        {
            isValid = false
        }
        return isValid
    }
}
