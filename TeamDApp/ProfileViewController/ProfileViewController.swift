//
//  ProfileViewController.swift
//  TeamDApp
//
//  Created by Yuki Kuwashima on 2023/11/29.
//

import TeamDLibrary

class ProfileViewController: UIViewController {
    
    //IBOutletここに書く
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.reload()
    }
    
    func reload() {
        //リロード処理をここに書く
    }
    
    //IBActionここに書く
    
}

//ここはいじらない
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
