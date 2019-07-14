//
//  AppSyncInterface.swift
//  EasyGrocList
//
//  Created by Ninan Thomas on 6/25/19.
//  Copyright © 2019 Ninan Thomas. All rights reserved.
//

import Foundation
import AWSAppSync
import common



@objc public class AppSyncInterface : NSObject
{
    var appSyncClient: AWSAppSyncClient?
    
    override init() {
        super.init()
        do {
            // You can choose the directory in which AppSync stores its persistent cache databases
            let cacheConfiguration = try AWSAppSyncCacheConfiguration()
            
            // AppSync configuration & client initialization
            let appSyncServiceConfig = try AWSAppSyncServiceConfig()
            let appSyncConfig = try AWSAppSyncClientConfiguration(appSyncServiceConfig: appSyncServiceConfig,
                                                                  cacheConfiguration: cacheConfiguration)
            appSyncClient = try AWSAppSyncClient(appSyncConfig: appSyncConfig)
        } catch {
            print("Error initializing appsync client. \(error)")
        }
        // other methods
        
    }
    
    func tryUpdatingUserID(input updateUserId: UpdateUserInfoInput)
    {
        self.appSyncClient?.perform(mutation: UpdateUserInfoMutation(input: updateUserId)) { (result, error) in
            if let error = error as? AWSAppSyncClientError {
                print("Error occurred: \(error.localizedDescription )")
                self.showFailedToLinkAlert(err: error.localizedDescription)
                return
            }
            if let resultError = result?.errors {
                print("Error updating the item on server: \(resultError)")
                self.showFailedToLinkAlert(err: "Error linking alexa code")
                return
            }
            self.updateUserDefaultsAndShowAlert(userID: updateUserId.userId)
        }
        
    }
    
    func updateUserDefaultsAndShowAlert(userID uid: String)
    {
        UserDefaults.standard.set(uid, forKey: "syncUserID")
        
        DispatchQueue.main.async {
        let alertController = UIAlertController(title: "Alexa linked", message:"EasyGrocList iPhone App and Alexa skill are linked. You can start adding items to lists from Alexa compatible devices via voice interface", preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .default) { (action:UIAlertAction) in
            
        }
        alertController.addAction(ok)
         let appDelegate =   UIApplication.shared.delegate as! AppDelegate
        appDelegate.aViewController.present(alertController, animated: true)
        }
    }
    
    func showFailedToLinkAlert(err error : String)
    {
        DispatchQueue.main.async {
            var msg = "Failed to link EasyGrocList iPhone App and Alexa skill "
            msg += error
            msg += " try again later"
        let alertController = UIAlertController(title: "Alexa linked", message:msg, preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .default) { (action:UIAlertAction) in
            
        }
        alertController.addAction(ok)
        let appDelegate =   UIApplication.shared.delegate as! AppDelegate
        appDelegate.aViewController.present(alertController, animated: true)
    }
    }
    
    @objc public func getUserID(_ acode: Int)
    {
        print("Querying for userID with code=", acode)
        appSyncClient?.fetch(query: GetAccountLinkQuery(code:acode), cachePolicy: .returnCacheDataAndFetch) {(result, error) in
            if error != nil {
                print(error?.localizedDescription ?? "")
                self.showFailedToLinkAlert(err: error?.localizedDescription ?? "Unknown error")
                return
            }
            if (result?.data?.getAccountLink == nil)
            {
                print("no items found")
                self.showFailedToLinkAlert(err: "No items found")
                return
            }
            
            let deleteCode = DeleteAccountLinkInput(code:acode)
            
            self.appSyncClient?.perform(mutation: DeleteAccountLinkMutation(input: deleteCode)) { (result, error) in
                if let error = error as? AWSAppSyncClientError {
                    print("Error occurred: \(error.localizedDescription )")
                }
                if let resultError = result?.errors {
                    print("Error deleting the item on server: \(resultError)")
                    
                }
            }
            
             let pAppCmnUtil = AppCmnUtil.sharedInstance()
            let addUserId = CreateUserInfoInput( shareId:NSNumber(value:pAppCmnUtil?.share_id ?? 0).intValue, date:Int(NSDate().timeIntervalSince1970), userId: (result?.data?.getAccountLink!.userId)!, verified: true)
            let updateUserId = UpdateUserInfoInput( shareId:NSNumber(value:pAppCmnUtil?.share_id ?? 0).intValue, date:Int(NSDate().timeIntervalSince1970), userId: (result?.data?.getAccountLink!.userId)!, verified: true)
            
            self.appSyncClient?.perform(mutation: CreateUserInfoMutation(input: addUserId)) { (result, error) in
                if let error = error as? AWSAppSyncClientError {
                    print("Error occurred: \(error.localizedDescription )")
                    self.tryUpdatingUserID(input: updateUserId)
                    return
                }
                if let resultError = result?.errors {
                    print("Error creating the item on server: \(resultError)")
                   self.tryUpdatingUserID(input: updateUserId)
                    return
                }
               self.updateUserDefaultsAndShowAlert(userID: addUserId.userId)
            }
            
        }
    }
    
    @objc public func runQuery(_ userID : String){
       // let userID = "ninan"
        var items : [AlexaItem] = []
        appSyncClient?.fetch(query: ListEasyGrocListItemssQuery(userID: userID), cachePolicy: .returnCacheDataAndFetch) {(result, error) in
            if error != nil {
                print(error?.localizedDescription ?? "")
                return
            }
            if (result?.data?.listEasyGrocListItemss == nil)
            {
                print("no items found")
                return
            }
            
          //  print(result?.data?.getEasyGrocListItems!.name ?? "banana not found")
            result?.data?.listEasyGrocListItemss?.items!.forEach
            {
                let itemEl = AlexaItem()
                itemEl.name = ($0?.name)!
                itemEl.masterList = ($0?.masterList)!
                itemEl.add  = ($0?.add)!
                itemEl.date = ($0?.date)!
                items.append(itemEl)
                var item = " MasterList=" + ($0?.masterList)!
                item += " name=" + ($0?.name)! + " userID=" + ($0?.userId)!
                print(item)
            }
             let pAppCmnUtil = AppCmnUtil.sharedInstance()
             pAppCmnUtil?.dataSync?.putAlexaItems(items)
            //deleting items nows
            for item in items
            {
                let deleteItem = DeleteEasyGrocListItemsInput(userId: userID, name: item.name!, masterList: item.masterList!)
                self.appSyncClient?.perform(mutation: DeleteEasyGrocListItemsMutation(input: deleteItem)) { (result, error) in
                    if let error = error as? AWSAppSyncClientError {
                        print("Error occurred: \(error.localizedDescription )")
                    }
                    if let resultError = result?.errors {
                        print("Error deleting the item on server: \(resultError)")
                        return
                    }
                }
                
            }
        }
        
    }
    
}
