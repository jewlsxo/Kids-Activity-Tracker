//
//  OpenByButton.swift
//  Activity Trackers
//
//  Created by Julissa Salinas on 4/13/22.
//

import SwiftUI

//First create a page lets say FirstController and SecondController
// write below code inside the FirstController file
import UIKit;

class FirstController : UIViewController {

   @IBOutlet weak var btnClickOnME: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
            btnClickOnME.addTarget(self,action: #selector(tapOnButton), for: .touchUpInside)
    
}

   @objc func tapOnButton(){

    let story = UIStoryboard(name: "Main", bundle: nil)
    let controller = story.instantiateViewController(identifier:"FirstController") as! FirstController
    let navigation = UINavigationController(rootViewController: controller)
    self.view.addSubview(navigation.view)
    self.addChild(navigation)
    navigation.didMove(toParent: self)
  }

}

