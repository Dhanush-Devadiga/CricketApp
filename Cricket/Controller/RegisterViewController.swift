//
//  RegisterViewController.swift
//  Cricket
//
//  Created by Preetam G on 06/12/22.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var proceedButton: UIButton!
    @IBOutlet weak var maleGender: RadioButton!
    @IBOutlet weak var femaleGender: RadioButton!
    @IBOutlet weak var customProfileView: ProfilePhotoImageView!
    @IBOutlet weak var triangleView: TriangleView!
    @IBOutlet weak var profileImage: CustomImageView!
    
    //let registerViewModel = RegisterViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        profileImage.setCornerRadius()
        configureButtons()
        customProfileView.setRadius()
    }
    
    func configureButtons() {
        
        _ = self.proceedButton.applyGradient( colours: [ #colorLiteral(red: 1, green: 0.7294117647, blue: 0.5490196078, alpha: 1), #colorLiteral(red: 0.9960784314, green: 0.3607843137, blue: 0.4156862745, alpha: 1)], cornerRadius: 4)
        //registerViewModel.assignGenderButtons(buttons: [maleGender, femaleGender])
    }

    @IBAction func genderButtonTapped(_ sender: RadioButton) {
        sender.changeButtonsStatus(sender: sender, buttons: [maleGender, femaleGender])
    }
    
    @IBAction func backButtonTapped(_ sender: Any) {

            navigationController?.popViewController(animated: true)

        }

        @IBAction func onRegisterTapped(_ sender: Any) {

            let registerVC = storyboard?.instantiateViewController(identifier: "RegisterViewController") as! RegisterViewController

            navigationController?.pushViewController(registerVC, animated: true)

        }
}
