//
//  DetailViewController.swift
//  test
//
//  Created by Kazuhiro Inouye on 2016/08/05.
//  Copyright © 2016年 Nextep Technology. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var createDateLabel: UILabel!


    var detailItem: AnyObject? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    func configureView() {
        // Update the user interface for the detail item.
        if let detail = self.detailItem {
//          if let label = self.detailDescriptionLabel {
//              label.text = detail.valueForKey("timeStamp")!.description
//          }
            if let myTextView = self.textView {
                myTextView.text = detail.valueForKey("content")!.description
            }
            if let label = self.createDateLabel {
                label.text = detail.valueForKey("createDate")!.description
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
        self.textView.becomeFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

