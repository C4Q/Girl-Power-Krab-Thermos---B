//
//  ViewController.swift
//  RandomTaco
//
//  Created by Ilmira Estil on 12/1/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController {
    
    var theTaco: Taco?
    let TacoAPIEndPoint = "https://taco-randomizer.herokuapp.com/random"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //theTaco = theTaco?.getData(APIEndPoint: TacoAPIEndPoint)
        Taco.getData(APIEndPoint: TacoAPIEndPoint, callback: { (taco) in
            self.theTaco = taco
        })
    }
    
    @IBAction func tacoButtontapped(_ sender: UIButton) {
            print(theTaco?.slug)
    }

    
    
    
    
}

