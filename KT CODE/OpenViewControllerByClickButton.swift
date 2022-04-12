//First create a page lets say FirstController and SecondController
// write below code inside the FirstController file

import UIKit;

class FirstController : UIViewController {

   @IBOutlet weak var btnClickOnME: UIButton!
    override func viewDidLoad()
	super.viewDidLoad()
		btnClickOnME.addTarget(self,action: #selector(tapOnButton), for: .touchUpInside)

}

   @objc func tapOnButton(){

       let story = UIStoryboard(name: "Main", bundle: nil)
	let controller = story.instantiateViewController(identifier:"SecondController") as! SecondController
        let navigation = UINavigationController(rootViewController: controller)
        self.view.addSubview(navigation.view)
	self.addChild(navigation)
        navigation.didMove(toParent: self)
  }

}

//Now click on your story board click on in navigation and destination file and class identifire and change the name SecondController which 
//need to be opened in this case it is SecondController file.

