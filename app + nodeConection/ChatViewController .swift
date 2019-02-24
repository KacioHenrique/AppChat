//
//  ChatViewController .swift
//  app + nodeConection
//
//  Created by kacio henrique couto batista on 21/02/19.
//  Copyright © 2019 kacio henrique couto batista. All rights reserved.
//

import Foundation
import UIKit
import Starscream
class ChatViewController:UIViewController{
  
    @IBOutlet var boxText: UITextField!
    @IBOutlet var tableView: UITableView!
    
    var dataSource = ChatTableViewDataSource()
    var delegate = ChatTableViewDelegate()
    var socket = WebSocket(url: URL(string: "ws://localhost:1337/")!,protocols:["chat"])
    var allDataMessagem:[String] = []
    var name:String?
    let defaults = UserDefaults.standard
    override func viewDidLoad() {
        tableView.dataSource = dataSource
        tableView.delegate = delegate
        socket.delegate = self as? WebSocketDelegate
        print(defaults.string(forKey: "name"))
        socket.connect()
        socket.onConnect = {
            self.socket.write(string:self.defaults.string(forKey: "name")!)
            print("is conected")
        }
        socket.onText = { (text: String) in
            self.dataSource.getDataSource(self.decodeData(text))
            self.tableView.reloadData()
        }
        
    }
    @IBAction func sendMensagem(_ sender: Any) {
        if self.boxText.text != ""{
            self.socket.write(string: boxText.text!)
            self.boxText.text = ""
            self.tableView.reloadData()
        }
        
    }
    //vem em string trasformo em json se f
    func decodeData(_ dataString:String) -> [Messagem]{
        let retorno:[Messagem] = []
        do {
            let decoder = JSONDecoder()
            let stringForData = dataString.data(using: .utf16)
            let product = try decoder.decode(TryObjectJson.self, from:stringForData!)
            return product.data
        }
        catch {
            do {
                let decoder = JSONDecoder()
                let stringForData = dataString.data(using: .utf16)
                let product = try decoder.decode(TryObjectJsonRota2.self, from:stringForData!)
                return [product.data]
            }
            catch{
                
            }
        }
        return retorno
    }
    @IBAction func senderForServidor(_ sender: Any) {
        
    }
}
