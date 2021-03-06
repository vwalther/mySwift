//
//  ViewController.swift
//  PickerData
//
//  Created by Vladimir Valter on 02.03.16.
//  Copyright © 2016 Vladimir Valter. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    let moodArray = ["Happy", "Sad", "Maudlin", "Ecstatic", "Overjoyed", "Optimistic", "Bewildered", "Cynical", "Giddy", "Indifferent", "Relaxed"]
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return moodArray.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return moodArray[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        var newBackGroundColor : UIColor
        
        switch row {
        case 0,3,4,5,8:
            newBackGroundColor = UIColor.yellowColor()
        case 1,2:
            newBackGroundColor = UIColor.darkGrayColor()
        case 6,7,9:
            newBackGroundColor = UIColor.lightGrayColor()
        default:
            newBackGroundColor = UIColor(red: 200/255, green: 255/255, blue: 200/255, alpha: 1.0)
        }
    
        self.view.backgroundColor = newBackGroundColor
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

