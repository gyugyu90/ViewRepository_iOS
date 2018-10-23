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
        termAgreeBtn.addTarget(self, action: #selector(handleTermAgree), for: .touchUpInside)
        privateInfoAgreeBtn.addTarget(self, action: #selector(handlePrivateInfoAgree), for: .touchUpInside)
        marketingAgreeBtn.addTarget(self, action: #selector(handleMarketingAgree), for: .touchUpInside)
    }
    
    @objc fileprivate func handleAllAgree(){
        if termAgreeBtn.flag, privateInfoAgreeBtn.flag, marketingAgreeBtn.flag {
            termAgreeBtn.flag = false
            privateInfoAgreeBtn.flag = false
            marketingAgreeBtn.flag = false
        } else {
            termAgreeBtn.flag = true
            privateInfoAgreeBtn.flag = true
            marketingAgreeBtn.flag = true
        }
        toggleAllAgree()
    }
    
    @objc fileprivate func handleTermAgree(){
        termAgreeBtn.flag = !termAgreeBtn.flag
        toggleAllAgree()
    }
    
    @objc fileprivate func handlePrivateInfoAgree(){
        privateInfoAgreeBtn.flag = !privateInfoAgreeBtn.flag
        toggleAllAgree()
    }
    
    @objc fileprivate func handleMarketingAgree(){
        marketingAgreeBtn.flag = !marketingAgreeBtn.flag
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
