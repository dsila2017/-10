//
//  MainVC.swift
//  დავალება 10
//
//  Created by David on 11/16/22.
//

import UIKit

class MainVC: UIViewController, changeMainColor {
    
    @IBOutlet weak var mainButton: UIButton!
    
    func changeUIColor(color: UIColor) {
        self.view.backgroundColor = color
    }
    
    func changeButtonColor(color: UIColor) {
        self.mainButton.backgroundColor = color
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func gotoButton(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let vc = storyboard.instantiateViewController(identifier: "ColorVC") as? ColorVC else {
            return
        }
        
        vc.delegate = self
        
        self.present(vc, animated: true)
    }
    
    @IBAction func clearButton(_ sender: UIButton) {
        self.view.backgroundColor = .systemBackground
        self.mainButton.backgroundColor = .systemBackground
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
