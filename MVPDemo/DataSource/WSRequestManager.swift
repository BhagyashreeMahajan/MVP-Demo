//
//  WSRequestManager.swift
//  MVPDemo
//
//  Created by MacBook on 27/05/19.
//  Copyright © 2019 MacBook. All rights reserved.
//

import UIKit
import Alamofire

class WSRequestManager: NSObject {
    static let objRequestManager = WSRequestManager()
    
    private lazy var backgroundManager: Alamofire.SessionManager = {
        let bundleIdentifier = "com.mahindra.MVPDemo"
        return Alamofire.SessionManager(configuration: URLSessionConfiguration.background(withIdentifier: bundleIdentifier))
    }()
    
    var backgroundCompletionHandler: (() -> Void)? {
        get{
            return backgroundManager.backgroundCompletionHandler
        }
        set{
            backgroundManager.backgroundCompletionHandler = newValue
        }
    }
    
    func postRequest1(url:String,params:[String:Any]?,header:[String:String]?,completion: @escaping (_ response:String? ,_ error:Bool?)->Void){
        
        completion("Successfully implemented!",true)
    }
    
    
    /**
     Function to initiate POST request.
     
     - Parameter url  URL to request
     - Parameter params  parameters if any
     - Parameter header  request header if any
     - Parameter completion block to return response with error if any*/
    
    func postRequest(url:String,params:[String:Any]?,header:[String:String]?,completion: @escaping (_ response:AnyObject? ,_ error:Bool?)->Void){
        
        Alamofire.request(url, method: .post, parameters: params, encoding: URLEncoding.default, headers: header).responseJSON { (response) in
            
            switch response.result
            {
            case .success:
                
                if let jsonDict = response.result.value as? NSDictionary
                {
                    let data = try! JSONSerialization.data(withJSONObject: response.result.value!, options: .prettyPrinted)
                    let string = NSString(data: data, encoding: String.Encoding.utf8.rawValue)
                    print("RESPONSE JSON:\n\(string as AnyObject)")
                    
                    completion(jsonDict ,true)
                    
                }
                else if let jsonDict = response.result.value as? NSArray
                {
                    let data = try! JSONSerialization.data(withJSONObject: response.result.value!, options: .prettyPrinted)
                    let string = NSString(data: data, encoding: String.Encoding.utf8.rawValue)
                    print("RESPONSE JSON:\n\(string as AnyObject)")
                    
                    completion(jsonDict,true)
                }
                
            case .failure(let error):
                print(error.localizedDescription)
                switch (response.error!._code)
                {
                case NSURLErrorTimedOut:
                    print(response.error ?? "0")
                    completion("Error occured" as AnyObject, false)
                    break
                case NSURLErrorNotConnectedToInternet:
                    completion("Please check internet connection" as AnyObject,false)
                    break
                default:
                    completion(error.localizedDescription as AnyObject, false)
                }
            }
        }
    }
    
    /**
     Function to initiate GET request.
     
     - Parameter url  URL to request
     - Parameter params  parameters if any
     - Parameter header  request header if any
     - Parameter completion block to return response with error if any
     */
    
    func getRequest(url:String,params:[String:AnyObject]?,header:[String:String]?,completion:@escaping (_ response:AnyObject? ,_ error:NSError?)->Void){
        Alamofire.request(url, method: .get, parameters: params, encoding: URLEncoding.default, headers: header).responseJSON { (objResponse) in
            completion(objResponse.result.value as AnyObject, objResponse.result.error! as NSError)
        }
    }
}
