//
//  ChatTableViewCell.swift
//  app + nodeConection
//
//  Created by kacio henrique couto batista on 21/02/19.
//  Copyright © 2019 kacio henrique couto batista. All rights reserved.
//

import Foundation
import UIKit
class ChatTableViewCell:UITableViewCell{
    @IBOutlet var author: UILabel!
    @IBOutlet var textMessagem: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
