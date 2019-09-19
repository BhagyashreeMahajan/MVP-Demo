//
//  Constants.swift
//  SparesOrdering
//
//  Created by Bhagyalaxmi Poojary on 22/03/18.
//  Copyright © 2018 Mahindra. All rights reserved.
//

import UIKit
import SystemConfiguration


class Constants: NSObject {
    
    //MARK:- Variable declaration
    public static let strAppName  = ""
    
    public static let InternetConnection = "Please check your Internet connection"
    public static let EnterName = "Please enter user name"
    public static let EnterPassword = "Please enter password"
    public static let EnterEmail = "Please enter email Id"
    public static let Ok = "Ok"
    public static let NoMasterAvaiable = "No master avaiable. Please sync data"
    public static let No = "No"
    public static let Yes = "Yes"
    public static let Cancel = "Cancel"
    public static let DoYouWantToLogout =  "Do you want to logout?"
    
    public static let NoSyncedMaster = "You have not synced master data from last 30 days. Please click Ok to sync"
    public static let NoRecordFound = "No Record Found"
    
    //MARK:- Color codes
//    public static let redColor = UIColor(red: 201/255.0, green: 8/255.0, blue: 19/255.0, alpha: 1.0)
    public static let navBarColor = UIColor(red: 32/255.0, green: 153/255.0, blue:203/255.0, alpha: 1.0)
    
    //MARK:- API URL
    
//    public static let strMainURL = "http://95.154.244.61/services/api/Api_Trans_Opportunity/"
     public static let strMainURL = "http://onestophelpdesk.com/w2sales_UAT/api/Api_Trans_Opportunity/"
    
    public static let strLoginURL = strMainURL + "Login"
    public static let strForgotPassword = strMainURL + "ForgotPassword?EmailID="
    
    public static let strChangePassword = strMainURL + "ChangePassword"
    
    public static let strAccountList = strMainURL + "GetCustomerList"
    
    public static let strGeo2MeterList = strMainURL + "GetGo2MeterDetails"
    
    
    
    public static let strUpdateContactNumber = strMainURL + "UpdateCustContactPerson"
    public static let strActiveInactiveContact = strMainURL + "DeleteCustomerContactPersonDetail"
    
    public static let strSubmitCustomerDetails = strMainURL + "SubmitCustomerDetails"
    
    public static let strVisitList = strMainURL + "VisitList"
    
    public static let strOpportunityList = strMainURL + "GetOpportunityList"
    
    public static let strVisitInOut = strMainURL + "VisitInOut"
    
    public static let strOpportunitySourceList = strMainURL + "GetOpportunitySourceList"
    public static let strGetChanceOfSuccess = strMainURL + "Get_Chance_Of_Success"
    public static let strGetSalesPhase = strMainURL + "Get_Sales_Phase"
    
    public static let strAddOpportunity = strMainURL + "AddOpportunity"
    
    public static let strZoneList = strMainURL + "GetZoneList"
    public static let strStateList = strMainURL + "GetStateList"
    public static let strCityList = strMainURL + "GetCityList"
  
    public static let strOppDetails = strMainURL + "Get_Opportunity_Details"
    public static let strContactPersonDetails = strMainURL + "Get_ContactPerson_Details"
    public static let strOpportunityCompetitorDetails = strMainURL + "Get_OpportunityCompetitorDetails"
    public static let strGetCompetitorList = strMainURL + "Get_Competitor_List"
    public static let strAddCompetitor = strMainURL + "AddCompetitor"
    public static let strDelete_Competitor = strMainURL + "Delete_Competitor"
    public static let strGetProductList = strMainURL + "Get_Oppor_Prod?PK_Opportunity_Id="
    public static let strGetRangeList = strMainURL + "Get_Range_List"
    public static let strGetSubRangeList = strMainURL + "Get_Sub_Range_List"
    public static let strGetProductListToAdd = strMainURL + "Get_Product_List"
    public static let strAddopporProduct = strMainURL + "Add_opporProduct"
    public static let strGetOpportunityVisitDetails = strMainURL + "Get_OpportunityVisitDetails"
    
    public static let strDeleteVisits = strMainURL + "DeleteVisits?PK_Visit="
    public static let strGetVisitTypeList = strMainURL + "Get_Visit_Type_List"
    public static let strGetReasonList = strMainURL + "Get_Reason_List"
    public static let strGetOpportunityCompetitorDetails = strMainURL + "Get_OpportunityCompetitorDetails"
    
    public static let strAddWon = strMainURL + "Add_Won"
    public static let strAddLost = strMainURL + "Add_Lost"
    public static let strAddStop = strMainURL + "Add_Stop"
    public static let strAddVisits = strMainURL + "AddVisits"
//    public static let strPoCopy = "http://95.154.244.61/services/api/uploading/wonducument?FK_Opportunity_Id="
//    public static let strVisitingCard = "http://95.154.244.61/services/api/uploading/VisitingCard"
    public static let strPoCopy = "http://onestophelpdesk.com/w2sales_UAT/api/uploading/wonducument?FK_Opportunity_Id="
    public static let strVisitingCard = "http://onestophelpdesk.com/w2sales_UAT/api/uploading/VisitingCard"
    public static let strUploadingFromGallery = "http://onestophelpdesk.com/w2sales_UAT/api/uploading/Gallary"
    
    public static let strGetContactDesignationList = strMainURL + "Get_Contact_Designation_List"
    public static let strGetRoomDetailsList = strMainURL + "Get_Room_Details_List"
    public static let strGetworkingstatuscompressor = strMainURL + "Get_working_status_compressor"
    public static let strDeleteCustomerCompressorDetail = strMainURL + "DeleteCustomerCompressorDetail"
    
    public static let strGet_Quotation_List = strMainURL + "Get_Quotation_List"
    public static let strAddCustomerRemark = strMainURL + "AddCustomerRemark"
    public static let strGetInOutFeedback = strMainURL + "GetInOutFeedback"
    
    public static let strAppUses = strMainURL + "AppUses"
    
    //api/uploading/Gallary?Cust_iD
    
    //MARK:-  Date Format Constant
    public static let strDDMMYYYY = "dd-MM-yyyy"
}

extension Date {
    //get date difference
    func interval(ofComponent comp: Calendar.Component, fromDate date: Date) -> Int {
        let currentCalendar = Calendar.current
        guard let start = currentCalendar.ordinality(of: comp, in: .era, for: date) else { return 0 }
        guard let end = currentCalendar.ordinality(of: comp, in: .era, for: self) else { return 0 }
        return end - start
    }
}

