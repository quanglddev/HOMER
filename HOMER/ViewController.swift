//
//  ViewController.swift
//  HOMER
//
//  Created by QUANG on 11/30/17.
//  Copyright © 2017 LUONG INDUSTRIES. All rights reserved.
//

import UIKit
import URWeatherView

class ViewController: UIViewController {
    
    @IBOutlet var weatherView: URWeatherView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.weatherView.initView(mainWeatherImage: #imageLiteral(resourceName: "buildings"), backgroundImage: #imageLiteral(resourceName: "bluesky.en"))
        
        self.showWeather()
    }
    
    //MARK: EVERYTHING WEATHER
    func showWeather() {
        let weather: URWeatherType = .cloudy
        self.weatherView.startWeatherSceneBulk(weather, upperImage: #imageLiteral(resourceName: "img_5.png"), duration: 1000000, debugOption: true) {
            print("rolo")
        }
        self.weatherView.startWeatherSceneBulk(weather, debugOption: true, additionalTask: {
            // task what you want to do after showing the weather effect...
            print("acafkad")
        })
    }
    
}

