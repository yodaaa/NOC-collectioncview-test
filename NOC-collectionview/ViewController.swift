//
//  ViewController.swift
//  collectioncview-test
//
//  Created by yodaaa on 2018/10/20.
//  Copyright © 2018年 yodaaa. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UICollectionViewDataSource, UICollectionViewDelegate{
    
    @IBOutlet weak var collectionview: UICollectionView!
    let list = CollectionList.CreateCollectionList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionview.delegate = self
        collectionview.dataSource = self
        collectionview.register(UINib(nibName: "CustomCell", bundle: nil), forCellWithReuseIdentifier: "CustomCell")
//      collectionview.frame.size.width = UIScreen.main.bounds.size.width
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 80, height: 100)
        layout.scrollDirection = .horizontal
        layout.sectionInset = UIEdgeInsets(top: 0.0, left: 10.0, bottom: 0.0, right: 20.0)
        collectionview.collectionViewLayout = layout
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return list.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let Cell:UICollectionViewCell =
//            collectionView.dequeueReusableCell(withReuseIdentifier: "Cell",
//                                               for: indexPath)
        let Cell =  collectionView.dequeueReusableCell(withReuseIdentifier: "CustomCell", for: indexPath)as! CustomCell
        Cell.setupCell(model: list[indexPath.row])

//        let icon = UIImage(named: "image_icon")
//        Cell.imagebutton.setImage(icon, for: .normal)
//        Cell.imagebutton.imageView?.contentMode = .scaleAspectFit
//        Cell.label.text = list[indexPath.row]
        
//        let imageView = UIImageView(image: UIImage(named: "image_icon"))
//        imageView.frame.size = CGSize(width: 50, height: 50)
//        imageView.isUserInteractionEnabled = true
//        Cell.addSubview(imageView)

        
//        let imagebutton = Cell.contentView.viewWithTag(1) as! UIButton
//        let icon = UIImage(named: "image_icon")
//        imagebutton.frame = CGRect(x: 0.0, y: 0.0, width: 40.0, height: 40.0)
//        //imagebutton.setTitle(list[indexPath.row], for: .normal)
//        imagebutton.setImage(icon, for: .normal)
//        imagebutton.imageView?.contentMode = .scaleAspectFit
//        imagebutton.contentHorizontalAlignment = .fill
//        imagebutton.contentVerticalAlignment = .fill
//        imagebutton.layer.cornerRadius = 10
//        imagebutton.layer.borderWidth = 1
//        let label = Cell.contentView.viewWithTag(2) as! UILabel
//        label.text = list[indexPath.row]
        
        return Cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath[1])
        performSegue(withIdentifier: "toSubViewController",sender: indexPath[1])
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

