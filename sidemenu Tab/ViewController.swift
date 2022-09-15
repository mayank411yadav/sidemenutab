//
//  ViewController.swift
//  sidemenu Tab
//
//  Created by Mayank Yadav on 08/09/22.
//

import UIKit
import SideMenu

class ViewController: UIViewController {
    
    var menuVC : ListController!
    @IBOutlet weak var btnMenu: UIBarButtonItem!
    var menu : SideMenuNavigationController?
    override func viewDidLoad() {
        super.viewDidLoad()
        menu = SideMenuNavigationController(rootViewController: ListController())
        menu?.leftSide = true
        SideMenuManager.default.leftMenuNavigationController = menu
        SideMenuManager.default.addPanGestureToPresent(toView: view)
        menu?.setNavigationBarHidden(true, animated: true)
        
    }
    @IBAction func onclickedMenu(_ sender: UIBarButtonItem) {
        present(menu!, animated: true, completion: nil)
    
    }
}

