//
//  VFTBaseViewController.swift
//  HuTongAnt
//
//  Created by PanG on 2017/6/7.
//  Copyright © 2017年 PanG. All rights reserved.
//

import UIKit

class VFTBaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.titleTextAttributes = {[NSFontAttributeName:UIFont.systemFont(ofSize: 14)]}()
        view.backgroundColor = UIColor.init(white: 240/255.0, alpha: 1)
        navigationController?.navigationBar.barStyle = .default
        navigationController?.navigationBar.tintColor = UIColor.init(colorLiteralRed: 61/255.0, green: 172/255.0, blue: 247/255.0, alpha: 1)
        // Do any additional setup after loading the view.
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
