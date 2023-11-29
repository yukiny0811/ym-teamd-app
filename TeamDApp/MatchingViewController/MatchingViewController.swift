//
//  MatchingViewController.swift
//  TeamDApp
//
//  Created by Yuki Kuwashima on 2023/11/29.
//

import TeamDLibrary

class MatchingViewController: UIViewController {
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var shoukaibunLabel: UILabel!
    
    var currentPerson: ProfileData = ProfileData.people.randomElement()!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.reloadPerson()
    }
    
    @IBAction func OK() {
        Util.appendMatchedPerson(person: currentPerson)
        self.reloadPerson()
    }
    
    @IBAction func NG() {
        self.reloadPerson()
    }
    
    func reloadPerson() {
        currentPerson = ProfileData.people.randomElement()!
        nameLabel.text = currentPerson.name
        ageLabel.text = "\(currentPerson.age)歳"
        imageView.image = currentPerson.image.jpeg()!
        shoukaibunLabel.text = currentPerson.shoukaibun
    }
}

struct MatchingView: UIViewRepresentable {
    
    var viewController: MatchingViewController
    
    init(viewController: MatchingViewController) {
        self.viewController = viewController
    }
    
    func makeUIView(context: Context) -> some UIView {
        return viewController.view
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {}
}
