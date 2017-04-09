//
//  ViewController.swift
//  SearchAndFindPicker
//
//  Created by Malik Wahaj Ahmed on 19/03/2017.
//  Copyright © 2017 Malik Wahaj Ahmed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var dataList = [[String:AnyObject]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        for i in 0...99{
            dataList.append(["id":NSNumber(integerLiteral: i+1), "name":"Data Set \(i+1)" as AnyObject])
        }
    }
    
    @IBAction func showExample(_ sender: UIButton) {
        
        let searchPicker = SearchAndFindPicker.createPicker(dataArray: dataList, typeStr: "Data")
        searchPicker.show(vc: self)
        searchPicker.doneButtonTapped =  { selectedData in
            print(selectedData)
        }
    }

}

