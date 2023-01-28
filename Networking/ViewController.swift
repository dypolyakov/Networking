//
//  ViewController.swift
//  Networking
//
//  Created by Dmitry Polyakov on 28.01.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        fetchHeroes()
    }
}

// MARK: - Networking
extension ViewController {
    private func fetchHeroes() {
        guard let url = URL(string: "https://www.dota2.com/datafeed/herolist?language=russian") else { return }
        print(url)
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data else {
                print(error?.localizedDescription ?? "No error description")
                return
            }
            
            do {
                let heroes = try JSONDecoder().decode(Result.self, from: data)
                print(heroes)
            } catch let error {
                print(error)
            }
        }.resume()
    }
}

