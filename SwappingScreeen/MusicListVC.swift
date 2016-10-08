//
//  MusicListVC.swift
//  SwappingScreeen
//
//  Created by JinHan on 2016. 10. 8..
//  Copyright © 2016년 JinHan. All rights reserved.
//

import UIKit

class MusicListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.blue
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func backBtnPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func load3rdScreenPressed(_ sender: AnyObject) {
        let songTitle = "Quit Playing Games With My Heart"
        performSegue(withIdentifier: "PlaySongVC", sender: songTitle)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Swift 2.x -> segue.destinationViewController
        // Swift 3 -> segue.destination
        
        
        // Optional Binding으로 as?로 downCasting하여 판단
        // 코드만 봐도 직관적으로 이해가 된다.
        if let destination = segue.destination as? PlaySongVC {
            if let song = sender as? String {
                destination.selectedSong = song
            }
        }
    }

}
