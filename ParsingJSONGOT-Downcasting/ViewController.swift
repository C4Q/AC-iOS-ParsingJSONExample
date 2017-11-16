//
//  ViewController.swift
//  ParsingJSONGOT-Downcasting
//
//  Created by C4Q  on 11/16/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var episodes = [GOTEpisode]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
    }
    func loadData() {
        if let path = Bundle.main.path(forResource: "gameofthronesinfo", ofType: "json") {
            let myURL = URL(fileURLWithPath: path)
            if let data = try? Data(contentsOf: myURL) {
                let episodes = GOTEpisode.getEpisodes(from: data)
                self.episodes = episodes
            }
        }
        for episode in episodes {
            print(episode.name)
        }
    }
}

