//
//  ChatTableViewDelegate .swift
//  app + nodeConection
//
//  Created by kacio henrique couto batista on 21/02/19.
//  Copyright © 2019 kacio henrique couto batista. All rights reserved.
//

import Foundation
import UIKit

public class ChatTableViewDelegate: NSObject, UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You tapped cell number \(indexPath.row).")
    }
}
