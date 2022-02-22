//
//  ViewController.swift
//  ZendeskIntegrationTest
//
//  Created by Javier Silva on 14.07.21.
//

import UIKit
import ZendeskSDK

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        // Hide bottom line on navigation bar
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()

 
    }


    @IBAction func didTap(_ sender: Any) {
        // Push the messaging VC into the stack
        if let messagingViewController = Zendesk.instance?.messaging?.messagingViewController() {
            navigationController?.pushViewController(messagingViewController, animated: true)
        }
    }
}

