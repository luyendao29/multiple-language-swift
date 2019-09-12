//
//  ViewController.swift
//  multiple language swift
//
//  Created by Boss on 9/11/19.
//  Copyright © 2019 LuyệnĐào. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lblFname: UILabel!
    @IBOutlet weak var lblLname: UILabel!
    @IBOutlet weak var seg: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnClickSegment(_ sender: Any) {
        if seg.selectedSegmentIndex == 0 {
           self.langugeChange(languge: "en")
        }else {
            self.langugeChange(languge: "vi")
        }
    }
    
    func langugeChange(languge: String){
        lblFname.text = "FirstNameKey".localizabbleString(loc: languge)
        lblLname.text = "LastnameKey".localizabbleString(loc: languge)
    }
    
}

extension String{
    func localizabbleString(loc: String) -> String{
        let path = Bundle.main.path(forResource: loc, ofType: "lproj")
        let bundle = Bundle(path: path!)
         return NSLocalizedString(self, tableName: nil, bundle: bundle! , value: "", comment: "")
    }
}
