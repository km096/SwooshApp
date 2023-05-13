//
//  LeagueVC.swift
//  SwooshApp
//
//  Created by ME-MAC on 12/14/22.
//

import UIKit

class LeagueVC: UIViewController {
    
    var player: Player!

    @IBOutlet weak var btnNext: BorderButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()

    }
    
    @IBAction func btnNext(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    

    @IBAction func btnMens(_ sender: Any) {
        selectLeague(leagueType: "mens")
    }
    
    @IBAction func btnWomens(_ sender: Any) {
        selectLeague(leagueType: "womens")
    }
    
    @IBAction func btnCoed(_ sender: Any) {
        selectLeague(leagueType: "co-ed")
    }
    
    func selectLeague(leagueType: String ) {
        player.desiredLeague = leagueType
        btnNext.isEnabled = true
        print(leagueType)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
        }
    }
}
