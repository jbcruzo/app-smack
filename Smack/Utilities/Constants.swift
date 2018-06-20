//
//  Constants.swift
//  Smack
//
//  Created by Juan Bernardo Cruz Ortiz on 6/12/18.
//  Copyright © 2018 Juan Bernardo Cruz Ortiz. All rights reserved.
//

import Foundation

//
typealias CompletionHandler = (_ Success: Bool) -> ()

//URL Constants
let BASE_URL = "https://lesterchatchat.herokuapp.com/v1/"
let URL_REGISTER = "\(BASE_URL)account/register"

//Segues
let TO_LOGIN = "toLogin"
let TO_CREATE_ACCOUNT = "toCreateAccount"
let UNWIND = "unWindToChannel"

//User Defaults
let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"

