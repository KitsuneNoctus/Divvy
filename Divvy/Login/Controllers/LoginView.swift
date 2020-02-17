//
//  LoginView.swift
//  Divvy
//
//  Created by Henry Calderon on 2/14/20.
//  Copyright © 2020 Jessica Trinh. All rights reserved.
//

import UIKit

class LoginView: UIView {
    @IBOutlet var LoginView: LoginView!
    @IBOutlet weak var DivvyLogo: UIImageView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit(){
        Bundle.main.loadNibNamed("LoginView", owner: self, options: nil)
        addSubview(LoginView)
        LoginView.frame = self.bounds
        LoginView.autoresizingMask = [.flexibleHeight,.flexibleWidth]
        
    }


}
