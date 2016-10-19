//
//  MainVC.swift
//  PartyRockApp
//
//  Created by Development on 10/19/16.
//  Copyright © 2016 Development. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var partyRocks = [PartyRock]()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let p1 = PartyRock(imageURL: "https://s-media-cache-ak0.pinimg.com/564x/31/b9/1a/31b91aa8b54e7092c44b0f621d63dac9.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/VbfpW0pbvaU\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Stitches")
        
        let p2 = PartyRock(imageURL: "http://www.beautifulballad.org/wp-content/uploads/2015/11/ik.png", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ngORmvyvAaI\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "I Know What You Did Last Summer")
        
        let p3 = PartyRock(imageURL: "http://www.josepvinaixa.com/blog/wp-content/uploads/2015/12/Charlie-Puth-One-Call-Away-Remix-feat.-Tyga-2480x2480.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/BxuY9FET9Y4\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "One Call Away")
        
        let p4 = PartyRock(imageURL: "https://s-media-cache-ak0.pinimg.com/564x/31/b9/1a/31b91aa8b54e7092c44b0f621d63dac9.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/VbfpW0pbvaU\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Stitches")
        
        let p5 = PartyRock(imageURL: "http://www.beautifulballad.org/wp-content/uploads/2015/11/ik.png", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ngORmvyvAaI\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "I Know What You Did Last Summer")
        
        let p6 = PartyRock(imageURL: "http://www.josepvinaixa.com/blog/wp-content/uploads/2015/12/Charlie-Puth-One-Call-Away-Remix-feat.-Tyga-2480x2480.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/BxuY9FET9Y4\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "One Call Away")
        
        partyRocks.append(p1)
        partyRocks.append(p2)
        partyRocks.append(p3)
        partyRocks.append(p4)
        partyRocks.append(p5)
        partyRocks.append(p6)
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyCell", for: indexPath) as? PartyCell {
            
            let partyRock = partyRocks[indexPath.row]
            cell.updateUI(partyRock: partyRock)
            
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partyRocks.count
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
