//
//  TermsVC.swift
//  ViewRepository
//
//  Created by khpark on 2018. 10. 23..
//  Copyright © 2018년 fourbcompany. All rights reserved.
//

import UIKit

class TermsVC: UIViewController {

    @IBOutlet weak var allAgreeBtn: ToggleButton!
    @IBOutlet weak var termAgreeBtn: ToggleButton!
    @IBOutlet weak var privateInfoAgreeBtn: ToggleButton!
    @IBOutlet weak var marketingAgreeBtn: ToggleButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        allAgreeBtn.addTarget(self, action: #selector(handleAllAgree), for: .touchUpInside)
        termAgreeBtn.addTarget(self, action: #selector(handleIndividualAgree(sender:)), for: .touchUpInside)
        privateInfoAgreeBtn.addTarget(self, action: #selector(handleIndividualAgree(sender:)), for: .touchUpInside)
        marketingAgreeBtn.addTarget(self, action: #selector(handleIndividualAgree(sender:)), for: .touchUpInside)
    }
    
    @objc fileprivate func handleAllAgree(){
        let agreesAll = termAgreeBtn.flag && privateInfoAgreeBtn.flag && marketingAgreeBtn.flag
        termAgreeBtn.flag = !agreesAll
        privateInfoAgreeBtn.flag = !agreesAll
        marketingAgreeBtn.flag = !agreesAll
        toggleAllAgree()
    }
    
    @objc fileprivate func handleIndividualAgree(sender: ToggleButton){
        sender.flag = !sender.flag
        toggleAllAgree()
    }
    
    fileprivate func toggleAllAgree(){
        if termAgreeBtn.flag, privateInfoAgreeBtn.flag, marketingAgreeBtn.flag {
            allAgreeBtn.flag = true
        } else {
            allAgreeBtn.flag = false
        }
    }
}
