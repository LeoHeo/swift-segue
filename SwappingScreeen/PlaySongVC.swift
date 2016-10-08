//
//  PlaySongVC.swift
//  SwappingScreeen
//
//  Created by JinHan on 2016. 10. 8..
//  Copyright © 2016년 JinHan. All rights reserved.
//

import UIKit

class PlaySongVC: UIViewController {

    @IBOutlet weak var songtitleLbl: UILabel!
    
    private var _selectedSong:String!
    
    var selectedSong: String {
        get {
            return _selectedSong
        }
        set {
            _selectedSong = newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        songtitleLbl.text = selectedSong
    }
}
