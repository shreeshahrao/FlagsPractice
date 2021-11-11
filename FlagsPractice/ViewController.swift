//
//  ViewController.swift
//  FlagsPractice
//
//  Created by Shreesha on 11/11/21.
//

import UIKit

class ViewController: UIViewController {

     var countries = ["India","England","Australia" ,"America","SriLanka","Slovakia","Halland","India","England","Australia" ,"America","SriLanka","Slovakia","Halland"]
    
    @IBOutlet weak var countryTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        countryTableView.dataSource = self
    }
   
    
 
}
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countries.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = countryTableView.dequeueReusableCell(withIdentifier: "cell") as! CountryTableViewCell
        cell.countryLabel.text = countries[indexPath.row]
        cell.countryImage.image = UIImage(named: countries[indexPath.row])
        
        return cell 
    }
    
    
    
}

