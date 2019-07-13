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
    
    @objc public func getUserID(alexaCode code: Int)
    {
        
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
                        print("Error saving the item on server: \(resultError)")
                        return
                    }
                }
                
            }
        }
        
    }
    
}
