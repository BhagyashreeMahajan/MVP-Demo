//
//  Presenter.swift
//  MVPDemo
//
//  Created by MacBook on 27/05/19.
//  Copyright © 2019 MacBook. All rights reserved.
//

import Foundation

protocol LoginViewDelegate: NSObjectProtocol {
    func displayResponseMsg(message:String)
}

class Presenter {
    
    private let wsRequestManager:WSRequestManager
    weak private var loginViewDelegate : LoginViewDelegate?
    
    init(wsRequestManager:WSRequestManager){
        self.wsRequestManager = wsRequestManager
    }
    
    func setViewDelegate(loginViewDelegate:LoginViewDelegate?){
        self.loginViewDelegate = loginViewDelegate
    }
    
    
    func ws_callLogin(userName : String, password : String){
        
        let params =  ["userName" : userName,"password" : password]
        
        WSRequestManager.objRequestManager.postRequest1(url: Constants.strLoginURL, params: params as [String : AnyObject], header: nil) { (response, isSuccess) in
          
            if isSuccess!{
                print(response!)
                
                if response == "Successfully implemented!"
                {
                    let objUserDetails = UserDetails()
                    
                    objUserDetails.strName = "Bhagyashree"
                    
                    self.loginViewDelegate?.displayResponseMsg(message: objUserDetails.strName)
                }
     
            }
            
        }
    }
    
//    //MARK:- API Call
//    func ws_callLogin(userName : String, password : String, deviceId : String)
//    {
//
//
//        let params =  ["userName" : userName,"password" : password, "deviceId" : deviceId]
//        print(params)
//
//        WSRequestManager.objRequestManager.postRequest(url: Constants.strLoginURL, params: params as [String : AnyObject], header: nil) { (response, isSuccess) in
//
//            if isSuccess!{
//                print(response!)
//
//                if let JSON = response! as? [String: Any] {
//                    print(JSON)
//                    if let strIsSuccess = JSON["IsSuccess"] as? Int
//                    {
//                        print(strIsSuccess)
//                        if strIsSuccess == 1
//                        {
//                            let response = JSON["Response"] as? NSDictionary
//
//                            let userId = response!["PK_Resource_Id"]
//                            let emailId = response!["Resource_Email_Id"]
//                            let mobileNo = response!["Resource_Mobile_No"]
//                            let resourceName = response!["Resource_Name"]
//                            let designationId = response!["FK_Designation_Id"]
//                            let Designation_Desc = response!["Designation_Desc"]
//
//                        }
////                        else
////                        {
////                            self.showAlertView(title: Constants.strAppName, message: "Please enter correct Username or Password!")
////                        }
//                    }
////                    else
////                    {
////                        self.showAlertView(title: Constants.strAppName, message: "Something went wrong on server side")
////                    }
//                }
//
//                //                {
//                //                    "Response" : {
//                //                        "FK_State_Id" : 1,
//                //                        "Resource_Password" : "2019",
//                //                        "FK_Designation_Id" : 5,
//                //                        "Designation_Desc" : "Sales Engineer",
//                //                        "Resource_Mobile_No" : "9878676767",
//                //                        "IMEI" : "354115071015596",
//                //                        "FK_Zone_Id" : 1,
//                //                        "CREATED_BY" : null,
//                //                        "CREATED_DATE" : null,
//                //                        "ISACTIVE" : 1,
//                //                        "Message" : null,
//                //                        "Resource_Name" : "rashmi ",
//                //                        "Resource_Login_Id" : "rashmisonje@gmail.com",
//                //                        "Reset_PasswordCode" : null,
//                //                        "MODIFIED_BY" : null,
//                //                        "MODIFIED_DATE" : null,
//                //                        "PK_Resource_Id" : 259,
//                //                        "Resource_Email_Id" : "rashmisonje@gmail.com"
//                //                    },
//                //                    "IsSuccess" : true,
//                //                    "ResponseData" : "",
//                //                    "Message" : "Login successful!"
//                //                }
//            }
//            else {
//
//            }
//        }
//    }
    
}
