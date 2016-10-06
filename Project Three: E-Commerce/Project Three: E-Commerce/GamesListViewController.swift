//
//  GamesListViewController.swift
//  Project Three: E-Commerce
//
//  Created by K on 10/4/16.
//  Copyright © 2016 Daniel Kim. All rights reserved.
//

import Foundation
import UIKit

class GamesListViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        apiCall()
    }
    
    var searchURL = "http://svcs.ebay.com/services/search/FindingService/v1?OPERATION-NAME=findItemsByKeywords&SERVICE-VERSION=1.0.0&SECURITY-APPNAME=KevinBra-GameSifu-PRD-f2f4c750a-ebdce035&RESPONSE-DATA-FORMAT=JSON&REST-PAYLOAD&"
    
    var keyword = "keywords="
    
    var inputKeyword = "crash%20bandicoot"
    
    var itemsByKeyWordsArray = [String]()
    
    var searchResultItemArray = [String]()
    
    func apiCall() {
        
        let emptyString = searchURL + keyword + inputKeyword
        
        let url = URL(string: emptyString)!

//        var request = URLRequest.init(url: url)
//        
//        request.setValue("", forHTTPHeaderField: "Authorization")
//        
//        let session = URLSession.shared
//
        guard let data = try? Data(contentsOf: url),
            let json = (try? JSONSerialization.jsonObject(with: data, options: .mutableContainers)) as? NSDictionary else {
                return
        }
        
        guard let array = (json["searchResults"]) as? NSArray else { return }
        
        for i in array {
            
            guard let dictionary = i as? NSDictionary else { continue }
            
            print(dictionary)
            
            guard GamesList.fromjson(dictionary: dictionary) != nil
                else {
                    print("error in guard")
                    return }
            
//            guard let newData = try? Data(contentsOf: ebayDictionary.galleryURL)
//                else {return}
//            
//            searchResultItemArray.append(ebayDictionary)
            
            
        }
        
        
//        self.mainOperation.addOperation {
//        }
        
    }
    
    //dataTask.resume()
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        return cell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}






