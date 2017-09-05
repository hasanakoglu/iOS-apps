//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by CICD2 on 05/09/2017.
//  Copyright © 2017 CICD2. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
    var player: Player! //implicitly set so it doesnt run without a player
    
    @IBOutlet weak var nextBtn: BorderButton!
    
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
        
    }
    
    
    @IBAction func onMensTapped(_ sender: Any) {
       selectLeague(leagueType: "mens")
    }
    
   
    @IBAction func onWomensTapped(_ sender: Any) {
        selectLeague(leagueType: "womens")


    }

    
    @IBAction func onCoedTapped(_ sender: Any) {
    selectLeague(leagueType: "coed")

    }
    
   func selectLeague(leagueType: String) {
    player.desiredLeague = leagueType
    nextBtn.isEnabled = true
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        player = Player() //will load a new player every load

        
    }
    
    @IBAction func unwindFromLeagueVC(unwindSegue: UIStoryboardSegue){
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player //player from leaguevc going to player in skillvc
            
            
        }
    }

 

  

}
