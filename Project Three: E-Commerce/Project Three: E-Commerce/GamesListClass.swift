//
//  GamesListClass.swift
//  Project Three: E-Commerce
//
//  Created by K on 10/4/16.
//  Copyright © 2016 Daniel Kim. All rights reserved.
//

import Foundation
import UIKit

struct GamesList {
    
    let findItemsByKeywordsResponse: NSDictionary
        let searchResult: NSDictionary
            let item: NSDictionary
                let itemId: NSDictionary
                let title: NSDictionary
                let galleryURL: NSDictionary
                let viewItemURL: NSDictionary
                let autoPay: NSDictionary
                let postalCode: NSDictionary
                let sellingStatus: NSDictionary
                    let currentPrice: NSDictionary
                        let __value__: NSDictionary
    
    static func fromjson(dictionary: NSDictionary) -> GamesList? {
        guard let findItemsByKeywordsResponse = dictionary["findItemsByKeywordsResponse"] as? NSDictionary,
        let searchResult = dictionary["searchResult"] as? NSDictionary,
        let item = dictionary["item"] as? NSDictionary,
        let itemId = dictionary["itemId"] as? NSDictionary,
        let title = dictionary["title"] as? NSDictionary,
        let galleryURL = dictionary["galleryURL"] as? NSDictionary,
        let viewItemURL = dictionary["viewItemURL"] as? NSDictionary,
        let autoPay = dictionary["autoPay"] as? NSDictionary,
        let postalCode = dictionary["postalCode"] as? NSDictionary,
        let sellingStatus = dictionary["sellingStatus"] as? NSDictionary,
        let currentPrice = dictionary["currentPrice"] as? NSDictionary,
            let __value__ = dictionary["__value__"] as? NSDictionary else {
                print("Guard failed on fromJson()")
                return nil
        }
        
        guard let resultsDictionary = dictionary["searchResult"] as? NSDictionary else {return nil }
        guard let itemDictionary = resultsDictionary["item"] as? NSDictionary else { return nil }
//        guard let itemId = itemDictionary["itemId"] as? NSDictionary else { return nil }

//        guard let title = itemDictionary["title"] as? String,
//        let galleryURL = dictionary["galleryURL"] as? NSDictionary,
//        let viewItemURL = dictionary["viewItemURL"] as? NSDictionary,
//        let autoPay = dictionary["autoPay"] as? NSDictionary,
//        let postalCode = dictionary["postalCode"] as? NSDictionary,
//        let sellingStatus = dictionary["sellingStatus"] as? NSDictionary,
//        let currentPrice = dictionary["currentPrice"] as? NSDictionary,
//        let __value__ = dictionary["__value__"] as? NSDictionary
        
        
        return GamesList(findItemsByKeywordsResponse: findItemsByKeywordsResponse, searchResult: searchResult, item: item, itemId: itemId, title: title, galleryURL: galleryURL, viewItemURL: viewItemURL, autoPay: autoPay, postalCode: postalCode, sellingStatus: sellingStatus, currentPrice: currentPrice, __value__: __value__)
        
    }







}
