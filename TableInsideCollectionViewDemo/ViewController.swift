//
//  ViewController.swift
//  TableInsideCollectionViewDemo
//
//  Created by Amit Kumar Singh on 23/01/19.
//  Copyright © 2019 Amit Kumar Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK:
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        collectionView?.register(CustomizedCell.self, forCellWithReuseIdentifier: "cell")
    }


}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CustomizedCell
        
        return cell
    }
    
    
    
}


/*
 * https://www.raywenderlich.com/9334-uicollectionview-tutorial-getting-started
 * https://stackoverflow.com/questions/43231937/tableview-inside-specific-uicollectionviewcell-programmatically
 * https://stackoverflow.com/questions/52045681/custom-cell-with-uitableview-inside-uicollectionviewcell
 * https://stackoverflow.com/questions/45767502/how-do-i-show-a-uitableview-within-a-uicollectionviewcell
 * https://stackoverflow.com/questions/15192936/uitableview-inside-uicollectionview-handling-touches
 * https://developer.apple.com/documentation/uikit/uicollectionviewdatasource/1618029-collectionview
 */
