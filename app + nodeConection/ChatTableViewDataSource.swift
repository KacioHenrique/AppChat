//
//  ChatTableViewDataSource.swift
//  app + nodeConection
//
//  Created by kacio henrique couto batista on 21/02/19.
//  Copyright © 2019 kacio henrique couto batista. All rights reserved.
//

import Foundation
import UIKit

class ChatTableViewDataSource:NSObject,UITableViewDataSource {
    var items = [Messagem]()
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:ChatTableViewCell = tableView.dequeueReusableCell(withIdentifier: "chatCell", for: indexPath) as! ChatTableViewCell
        
        //cell.textLabel?.text = self.items[indexPath.row].author
        cell.author.text = self.items[indexPath.row].author
        cell.textMessagem?.text = self.items[indexPath.row].text
        return cell
        
    }
    func getDataSource(_ data:[Messagem]){
        items += data
    }
    
    
}
