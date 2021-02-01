//
//  ViewController.swift
//  prepareSegues
//
//  Created by bhargava on 01/02/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var txt_Field:UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func didTapNextVc(_ sender : UIButton){
performSegue(withIdentifier: "detailVC", sender: self)

    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailVC" {
            guard let vc = segue.destination as? blueVc else {return}
            vc.nameText = txt_Field.text ?? ""
            
        }
        
    }

}

