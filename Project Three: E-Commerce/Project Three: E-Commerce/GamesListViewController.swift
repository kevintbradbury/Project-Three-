//
//  GamesListViewController.swift
//  Project Three: E-Commerce
//
//  Created by K on 10/4/16.
//  Copyright © 2016 Daniel Kim. All rights reserved.
//

import Foundation
import UIKit

class GamesListViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    var searchURL = "http://svcs.ebay.com/services/search/FindingService/v1?OPERATION-NAME=findItemsByKeywords&SERVICE-VERSION=1.0.0&SECURITY-APPNAME=KevinBra-GameSifu-PRD-f2f4c750a-ebdce035&RESPONSE-DATA-FORMAT=JSON&REST-PAYLOAD&"
    
    var keyword = "keywords="
    
    var inputKeyword = "crash%20bandicoot"
    
    var itemsByKeyWordsArray: [String]?
    
    var searchResultItemArray: [String]?
    
    func apiCall() {
        
        let emptyString = searchURL + keyword + inputKeyword
        
        let url = URL(string: emptyString)!
        
//        var request = URLRequest.init(url: url)
//        
//        request.setValue("Bearer XT-cgvuAYuopiCBZfTktylJweQmBcaHksb2mEwMpSG7ZBfWdWmcmWtOwEiyCAJBjTL7_hMFoT4Np976vktSLBVcSZy7nVoDOA4cH1Fl7fEnGADkjhEWInXEMhdXhV3Yx", forHTTPHeaderField: "Authorization")
        
        let session = URLSession.shared
        
        let dataTask = session.dataTask(with: request) {(data, response, error) -> Void in
            
            guard let moreData = data else { return }
            
            guard let someObject = (try? JSONSerialization.jsonObject(with: moreData, options: [])) as? NSDictionary else { return }
            
            guard let array = (someObject["businesses"]) as? NSArray else { return }
            
            for i in array {
                
                guard let dictionary = i as? NSDictionary else { continue }
                
                print(dictionary)
                
                guard let
               --> //yelpDictionary =
               -->     //YelpDataItem.fromjson(dictionary: dictionary)
                else {
                    print("error in guard")
                    return }
                
                guard let newData = try? Data(contentsOf:
               -->     //yelpDictionary.url)
                    else {return}
                
                self.
                -->    //yelpBusiness.append(yelpDictionary)
                
                self.
                -->    //yelpImages.append(UIImage(data: newData)!)
                
            
            }
            
            
            self.mainOperation.addOperation {
                self.
            -->    //yelpBizTable.reloadData()
            }
            
        }
        
        dataTask.resume()
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
