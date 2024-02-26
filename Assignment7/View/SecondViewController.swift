//
//  SecondViewController.swift
//  Assignment7
//
//  Created by James Kowalski on 2/23/24.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var lblState: UILabel!
    @IBOutlet weak var lblAbout: UILabel!
    var selectedCityState = CityState("", "", "")
    override func viewDidLoad() {
        super.viewDidLoad()
        lblState.text = selectedCityState.City + ", " + selectedCityState.State
        lblAbout.text = selectedCityState.Description
    }
    @IBAction func btnBackToMain(_ sender: UIButton) {
        dismiss(animated: true)
    }
}
	
