//
//  ColorVC.swift
//  დავალება 10
//
//  Created by David on 11/16/22.
//

import UIKit

protocol changeMainColor: AnyObject {
    func changeUIColor (color: UIColor)
    func changeButtonColor(color: UIColor)
}

class ColorVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    var delegate: changeMainColor!
    
    @IBAction func redButtonView(_ sender: UIButton) {
        delegate.changeUIColor(color: .red)
    }
    
    @IBAction func yellowButtonView(_ sender: UIButton) {
        delegate.changeUIColor(color: .yellow)
    }
    
    @IBAction func greenButtonView(_ sender: UIButton) {
        delegate.changeUIColor(color: .green)
    }
    
    @IBAction func blueButtonView(_ sender: UIButton) {
        delegate.changeUIColor(color: .blue)
    }
    
    @IBAction func orangeButtonView(_ sender: UIButton) {
        delegate.changeUIColor(color: .orange)
    }
    
    @IBAction func redButton(_ sender: UIButton) {
        delegate.changeButtonColor(color: .red)
    }
    
    @IBAction func yellowButton(_ sender: UIButton) {
        delegate.changeButtonColor(color: .yellow)
    }
    
    @IBAction func greenButton(_ sender: UIButton) {
        delegate.changeButtonColor(color: .green)
    }
    
    @IBAction func blueButton(_ sender: UIButton) {
        delegate.changeButtonColor(color: .blue)
    }
    
    @IBAction func orangeButton(_ sender: UIButton) {
        delegate.changeButtonColor(color: .orange)
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
