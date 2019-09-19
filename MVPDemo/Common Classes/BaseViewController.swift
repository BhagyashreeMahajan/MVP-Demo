//
//  BaseViewController.swift
//  MVPDemo
//
//  Created by MacBook on 27/05/19.
//  Copyright © 2019 MacBook. All rights reserved.
//

import UIKit
import MBProgressHUD

class BaseViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    func showAlertView(title : String, message : String){
        let alertController = UIAlertController( title: title, message: message, preferredStyle: .alert)
        let defaultAction = UIAlertAction(title: "Ok", style: .default, handler: { (alert: UIAlertAction!) in
            
        })
        //you can add custom actions as well
        alertController.addAction(defaultAction)
        present(alertController, animated: true, completion: nil)
    }
    
    //MARK:- Custom functions
    //show alert
    func showAlert(msg : String,btnTitle : String,onViewController : UIViewController)
    {
        let alert = UIAlertController(title: Constants.strAppName, message: msg, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: btnTitle, style: UIAlertAction.Style.default, handler: nil))
        onViewController.present(alert, animated: true, completion: nil)
    }
    
    func startLoading()
    {
        let spinnerActivity = MBProgressHUD.showAdded(to: self.view, animated: true);
        
        spinnerActivity.label.text = "Loading";
        
        spinnerActivity.detailsLabel.text = "Please Wait!";
        
        spinnerActivity.isUserInteractionEnabled = true;
    }
    
    func stopLoading()
    {
        MBProgressHUD.hide(for: self.view, animated: true);
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
