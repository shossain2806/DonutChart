//
//  ViewController.swift
//  SampleDonutChart
//
//  Created by Md. Saber Hossain on 17/4/20.
//  Copyright © 2020 Md. Saber Hossain. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var chartView: DonutChartView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        refreshPressed()
    }

    @IBAction func refreshPressed() {
        let values : [CGFloat] = [0.68, 0.12, 0.10, 0.05, 0.05]
        let entries = values.enumerated().map{ (index, value) in
            return DonutChartEntry(value: value,
                                   color: UIColor(named: "RingColor\(index + 1)")!)
            
        }
        chartView.configureView(entries: entries, animate: true)
    }
    
}

