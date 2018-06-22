//
//  MessageService.swift
//  Smack
//
//  Created by Juan Bernardo Cruz Ortiz on 6/22/18.
//  Copyright © 2018 Juan Bernardo Cruz Ortiz. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class MessageService {
    
    static let instance = MessageService()
    
    var channels = [Channel]()
    
    func findAllChannel(completion: @escaping CompletionHandler){
        Alamofire.request(URL_GET_CHANNELS, method: .get, parameters: nil, encoding: JSONEncoding.default, headers: BEARER_HEADER).responseJSON { (response) in
            
            if response.result.error == nil {
                guard let data = response.data else { return }
                
//Estas lineas del do son la nueva forma de hacer todo el siguiente codigo que esta como comentarios cabe mencionar que para este nuevo metodo es necesario que Channel en su class donde esta definida los elementos deben de tener el mismo nombre que tengan los campos de respuesta de la API
//                do {
//                    self.channels = try JSONDecoder().decode([Channel].self, from: data)
//                } catch let error {
//                    debugPrint(error as Any)
//                }
//                print(self.channels)
                
                if let json = try! JSON(data: data).array {
                    for item in json {
                        let name = item["name"].stringValue
                        let channelDescription = item["description"].stringValue
                        let id = item ["_id"].stringValue
                        let channel = Channel(channelTitle: name, channelDescription: channelDescription, id: id)

                        self.channels.append(channel)
                    }
                    print(self.channels[0].channelTitle)
                    completion(true)
                }
                
            } else {
                completion(false)
                debugPrint(response.result.error as Any)
            }
        }
    }
    
}
