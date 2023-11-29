//
//  MatchingViewController.swift
//  TeamDApp
//
//  Created by Yuki Kuwashima on 2023/11/29.
//

import TeamDLibrary

class MatchingViewController: UIViewController {
    
    //IBOutletここに書く
    
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
        //リロード処理をここに書く
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
