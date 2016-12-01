//
//  Taco.swift
//  RandomTaco
//
//  Created by Madushani Lekam Wasam Liyanage on 12/1/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import Foundation
import SwiftyJSON
import Alamofire

class Taco {
    
    let slug: String
    
    init(slug: String) {
        self.slug = slug
    }
    
    class func getData(APIEndPoint: String, callback: @escaping (Taco?) -> Void) {
            let url = URL(string: APIEndPoint)
      
            Alamofire.request(url!).responseJSON { (dataResponse) in
                if let jsonData = dataResponse.data {
                    let swiftyJSON = JSON(data: jsonData)
                    let slug = swiftyJSON["shell"]["slug"].stringValue
                    DispatchQueue.main.async {
                        callback(Taco.init(slug: slug))
                    }
                }
            }
        }
    
    
        
}
