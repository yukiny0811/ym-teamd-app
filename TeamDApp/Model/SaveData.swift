//
//  SaveData.swift
//  TeamDApp
//
//  Created by Yuki Kuwashima on 2023/11/29.
//

import TeamDLibrary

extension ProfileData {
    
    //人を手動で追加していく
    
    static let people: [ProfileData] = [
        .person1,
        .person2,
    ]
    
    static let person1: ProfileData = .init(
        name: "ゆるゆる",
        age: 22,
        image: UIImage(named: "placeholder")!.jpegData(compressionQuality: 1.0)!,
        isYamanashi: false,
        shoukaibun: "ゆるゆるゆるゆるしてます！"
    )
    
    static let person2: ProfileData = .init(
        name: "キビキビ",
        age: 22,
        image: UIImage(named: "placeholder")!.jpegData(compressionQuality: 1.0)!,
        isYamanashi: false,
        shoukaibun: "きびきびきびきびしてます！"
    )
}
