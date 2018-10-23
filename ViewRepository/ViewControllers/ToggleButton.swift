//
//  ToggleButton.swift
//  ViewRepository
//
//  Created by khpark on 2018. 10. 23..
//  Copyright © 2018년 fourbcompany. All rights reserved.
//

import UIKit

class ToggleButton: UIButton {

    let agreeImage = UIImage(named: "round_check_circle_black_36dp")
    let disagreeImage = UIImage(named: "round_check_circle_white_36dp")
    
    var flag = false {
        didSet {
            if flag != oldValue { // oldValue와 newValue가 다를 때만
                if oldValue {
                    setImage(disagreeImage, for: .normal)
                } else {
                    setImage(agreeImage, for: .normal)
                }
            }
        }
    }
    
    func toggle() {
        flag = !flag
    }
    
    
}
