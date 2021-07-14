//
//  ViewController.swift
//  ZendeskIntegrationTest
//
//  Created by Javier Silva on 14.07.21.
//

import UIKit
import ZendeskSDKMessaging

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        // Hide bottom line on navigation bar
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()

        // initialize SDK
        Messaging.initialize(channelKey: "eyJzZXR0aW5nc191cmwiOiJodHRwczovL215dGF4aTE2MTgzMzM1ODUuemVuZGVzay5jb20vbW9iaWxlX3Nka19hcGkvc2V0dGluZ3MvMDFGNENKNVNaRFc5UlRGMzEyRktENTFNWFIuanNvbiJ9", completionHandler: nil)
    }


    @IBAction func didTap(_ sender: Any) {
        // Push the messaging VC into the stack
        if let messagingViewController = Messaging.instance?.messagingViewController() {
            navigationController?.pushViewController(messagingViewController, animated: true)
        }
    }
}

