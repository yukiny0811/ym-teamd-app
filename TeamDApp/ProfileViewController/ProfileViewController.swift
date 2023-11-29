//
//  ProfileViewController.swift
//  TeamDApp
//
//  Created by Yuki Kuwashima on 2023/11/29.
//

import TeamDLibrary

class ProfileViewController: UIViewController {
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var ageTextField: UITextField!
    @IBOutlet var shoukaiTextView: UITextView!
    @IBOutlet var isYamanashiSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.reload()
    }
    
    func reload() {
        let myProfile = Util.getMyProfile()
        imageView.image = myProfile.image.jpeg() ?? nil
        nameTextField.text = myProfile.name
        ageTextField.text = String(myProfile.age)
        shoukaiTextView.text = myProfile.shoukaibun
        isYamanashiSwitch.isOn = myProfile.isYamanashi
    }
    
    @IBAction func update() {
        var myProfile = Util.getMyProfile()
        myProfile.image = imageView.image!.jpegData(compressionQuality: 1)!
        myProfile.name = nameTextField.text!
        myProfile.age = Int(ageTextField.text!)!
        myProfile.shoukaibun = shoukaiTextView.text
        myProfile.isYamanashi = isYamanashiSwitch.isOn
    }
    
}

struct ProfileView: UIViewRepresentable {
    
    var viewController: ProfileViewController
    
    init(viewController: ProfileViewController) {
        self.viewController = viewController
    }
    
    func makeUIView(context: Context) -> some UIView {
        return viewController.view
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {}
}
