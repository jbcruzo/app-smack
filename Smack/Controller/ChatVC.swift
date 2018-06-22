//
//  ChatVC.swift
//  Smack
//
//  Created by Juan Bernardo Cruz Ortiz on 6/11/18.
//  Copyright © 2018 Juan Bernardo Cruz Ortiz. All rights reserved.
//

import UIKit

class ChatVC: UIViewController {

    //Outlets
    @IBOutlet weak var menuBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        menuBtn.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
        
        //Estas condiciones son para que verifique si hay un usuario logeado y si lo hay pedir al centtro de notificaciones c
        if AuthService.instance.isLoggedIn {
            AuthService.instance.findUserByEmail(completion: { (sucess) in
                NotificationCenter.default.post(name: NOTIF_USER_DATA_DID_CHANGE, object: nil)
            })
        }
        MessageService.instance.findAllChannel { (success) in
            
        }
    }
}


