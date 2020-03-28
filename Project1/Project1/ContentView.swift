//
//  ContentView.swift
//  Project1
//
//  Created by Beatriz Carlos on 27/03/20.
//  Copyright © 2020 Beatriz Carlos. All rights reserved.
//

import SwiftUI
import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fm = FileManager.default
        let path = Bundle.main.resourcePath
        let items = try! fm.contentsOfDirectory(atPath: path)

        for item in items {
            if item.hasPrefix("nssl") {
                
            }
        }
    }
}
