//
//  ViewController.swift
//  SwiftWebviewer
//
//  Created by Jacob Steves on 2017-08-19.
//  Copyright © 2017 Jacob Steves. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.addSubview(webView)
        webView.translatesAutoresizingMaskIntoConstraints = false
        let attributes: [NSLayoutAttribute] = [.centerX, .centerY, .width, .height]
        NSLayoutConstraint.activate(attributes.map {NSLayoutConstraint(item: webView, attribute: $0, relatedBy: .equal, toItem: webView.superview, attribute: $0, multiplier: 1, constant: 0) })
        let url = NSURL (string: "https://www.google.com");
        let request = NSURLRequest(url: url! as URL);
        webView.loadRequest(request as URLRequest);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

