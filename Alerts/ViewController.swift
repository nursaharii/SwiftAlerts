//
//  ViewController.swift
//  Alerts
//
//  Created by Nurşah on 14.11.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var passwordagn: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signUp(_ sender: Any) {
        if userName.text == ""{
            let alert = UIAlertController(title: "Error!", message: "Kullanıcı adı giriniz.", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)
        }
        if password.text == ""{
            let alert = UIAlertController(title: "Error!", message: "Şifre giriniz.", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)
        }
        if passwordagn.text == "" {
             let alert = UIAlertController(title: "Error!", message: "Şifrenizi tekrar giriniz.", preferredStyle: UIAlertController.Style.alert)
             let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
             alert.addAction(okButton)
             self.present(alert, animated: true, completion: nil)
                     
                 }
        
        if passwordagn.text != nil {
            if password.text != passwordagn.text {
                let alert = UIAlertController(title: "Error!", message: "Girilen şifre değerleri eşleşmiyor.", preferredStyle: UIAlertController.Style.alert)
                let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
                alert.addAction(okButton)
                self.present(alert, animated: true, completion: nil)
                }
                
            else {
                
                let alert = UIAlertController(title: "Error!", message: "Kayıt başarılı", preferredStyle: UIAlertController.Style.alert)
                let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
                alert.addAction(okButton)
                self.present(alert, animated: true, completion: nil)
                             
                         
            }
            
        }
        
    }
    
}

