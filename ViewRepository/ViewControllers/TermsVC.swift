//
//  TermsVC.swift
//  ViewRepository
//
//  Created by khpark on 2018. 10. 23..
//  Copyright © 2018년 fourbcompany. All rights reserved.
//

import UIKit

class TermsVC: UIViewController {

    @IBOutlet weak var allAgreeBtn: UIButton!
    @IBOutlet weak var termAgreeBtn: UIButton!
    @IBOutlet weak var privateInfoAgreeBtn: UIButton!
    @IBOutlet weak var marketingAgreeBtn: UIButton!
    
    let agreeImage = UIImage(named: "round_check_circle_black_36dp")
    let disagreeImage = UIImage(named: "round_check_circle_white_36dp")
    
    var termAgree = false {
        didSet {
            if oldValue {
                termAgreeBtn.setImage(disagreeImage, for: .normal)
            } else {
                termAgreeBtn.setImage(agreeImage, for: .normal)
            }
        }
    }
    
    var privateInfoAgree = false {
        didSet {
            if oldValue {
                privateInfoAgreeBtn.setImage(disagreeImage, for: .normal)
            } else {
                privateInfoAgreeBtn.setImage(agreeImage, for: .normal)
            }
        }
    }
    
    var marketingAgree = false {
        didSet {
            if oldValue {
                marketingAgreeBtn.setImage(disagreeImage, for: .normal)
            } else {
                marketingAgreeBtn.setImage(agreeImage, for: .normal)
            }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        allAgreeBtn.addTarget(self, action: #selector(handleAllAgree), for: .touchUpInside)
        termAgreeBtn.addTarget(self, action: #selector(handleTermAgree), for: .touchUpInside)
        privateInfoAgreeBtn.addTarget(self, action: #selector(handlePrivateInfoAgree), for: .touchUpInside)
        marketingAgreeBtn.addTarget(self, action: #selector(handleMarketingAgree), for: .touchUpInside)
    }
    
    @objc fileprivate func handleAllAgree(){
        if termAgree, privateInfoAgree, marketingAgree {
            termAgree = false
            privateInfoAgree = false
            marketingAgree = false
        } else {
            if !termAgree {
                termAgree = true
            }
            if !privateInfoAgree {
                privateInfoAgree = true
            }
            if !marketingAgree {
                marketingAgree = true
            }
        }
        toggleAllAgree()
    }
    
    @objc fileprivate func handleTermAgree(){
        termAgree = !termAgree
        toggleAllAgree()
    }
    
    @objc fileprivate func handlePrivateInfoAgree(){
        privateInfoAgree = !privateInfoAgree
        toggleAllAgree()
    }
    
    @objc fileprivate func handleMarketingAgree(){
        marketingAgree = !marketingAgree
        toggleAllAgree()
    }
    
    fileprivate func toggleAllAgree(){
        if termAgree, privateInfoAgree, marketingAgree {
            allAgreeBtn.setImage(agreeImage, for: .normal)
        } else {
            allAgreeBtn.setImage(disagreeImage, for: .normal)
        }
    }
}
