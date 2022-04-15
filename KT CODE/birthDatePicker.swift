//Create a project name Datepicker
//design textboxField name birthDateTxt
//This code is design in story board but can be done in viewController 
// We can add some button to save the event to database and title like "Event Reminder" for the controller 

import UIKit

class ViewController: UIViewController{

	//this is the textFiled name birthDateTxt
	@IBOutlet weak var birthDateTxt: UITextField!

	let datePicker = UIDatePicker()

	override func viewDidLoad(){

		super.viewDidLoad()
		// calling createDatePicker function here 
		createDatePicker()
	}

 func createDatePicker(){
	birthDateTxt.textAlignment = .center

	let toolbar = UIToolbar()
	toolbar.sizeToFit()

    // bar button
        let doneBtn = UIBarButtonItem(barButtonSystemItem: .done, target: nil, aciton: #slector(donePressed))
	toolbar.setItems([doneBtn], animated: true)
	
	//assign toolbar
	birthDateTxt.inputAccessoryView = toolbar

	//assign date picker to the text field
	birthDateTxt.inputView = datePicker

	//date picker mode
	datePicker.datePickerMode = .date

	}
	@objc func donePressed(){
	//formatter
	let formatter = DateFormatter()
	formatter.dateStyle = .medium
	formatter.timeStyle = .none

	  birthDateTxt.text = formatter.string(from: datePicker.date)
	  self.view.endEditing(true)
	}

}