//
//  SecondViewController.swift
//  21_06_2023_MediaDemo
//
//  Created by Vishal Jagtap on 15/09/23.
//

import UIKit
import WebKit

class SecondViewController: UIViewController {
    var webView: WKWebView!
    let activityIndicator = UIActivityIndicatorView(style: .medium)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initializeWebKitView()
    }
    
    func initializeWebKitView(){
        activityIndicator.startAnimating()
        webView = WKWebView()
        webView.navigationDelegate = self
        self.view = webView
        
        let url = URL(string: "https://bitcode.in/employee/login")
        let urlRequest = URLRequest(url: url!)
        webView.load(urlRequest)
    

       // activityIndicator.stopAnimating()
        webView.allowsBackForwardNavigationGestures = true
    }
}

extension SecondViewController : WKNavigationDelegate{
//    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
//        activityIndicator.startAnimating()
//    }
//
//    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
//        activityIndicator.stopAnimating()
//    }
}
