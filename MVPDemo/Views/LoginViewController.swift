//
//  LoginViewController.swift
//  MVPDemo
//
//  Created by MacBook on 27/05/19.
//  Copyright © 2019 MacBook. All rights reserved.
//

import UIKit

import SwiftyJSON

class LoginViewController: BaseViewController, LoginViewDelegate {

    @IBOutlet weak var txtUserName: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    private let presenter = Presenter(wsRequestManager: WSRequestManager())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter.setViewDelegate(loginViewDelegate: self)
    }
    
    //MARK:- IBActions
    @IBAction func btnLoginClicked(_ sender: Any) {
        
        if txtUserName.text == ""
        {
            showAlert(msg: Constants.EnterName, btnTitle: Constants.Ok, onViewController: self)
        }
        else if txtPassword.text == ""
        {
            showAlert(msg: Constants.EnterPassword, btnTitle: Constants.Ok, onViewController: self)
        }
        else {
            
            if Utility.isInternetReachable(){
                
                presenter.ws_callLogin(userName: "test", password: "test")
            }
            else {
                showAlert(msg: Constants.InternetConnection, btnTitle: Constants.Ok, onViewController: self)
            }
        }
    }

    func displayResponseMsg(message:String) {
        print(message)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
