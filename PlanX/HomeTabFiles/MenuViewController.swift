//
//  MenuViewController.swift
//  PlanX
//
//  Created by Diana Sok on 7/31/19.
//  Copyright © 2019 H2OT. All rights reserved.
//

import UIKit

enum MenuType: Int {
    case home
    case logout
}
class MenuViewController: UITableViewController {

    var didTapMenuType: ((MenuType) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let menuType = MenuType(rawValue: indexPath.row) else {return}
        dismiss(animated: true) { [weak self] in
            self?.didTapMenuType?(menuType)
        }
    }

}
