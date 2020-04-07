//
//  TestPaper.swift
//  DemoSwiftUI
//
//  Created by Birkan Ovayolu on 02/12/2019.
//  Copyright © 2019 Pascal Education Technologies. All rights reserved.
//

import Foundation

struct Unit {
    let name: String
    let questionBankName: String
}

extension Unit {
    static func all() -> [Unit] {
        return [
            Unit(name: "Ünite 1 - Biyoloji Bilimi ve Canlıların Ortak Özellikleri", questionBankName:"TYT Biyoloji Soru Bankası"),
            Unit(name: "Ünite 2 - Canlıların Yapısında Bulunan Temel Bileşikler", questionBankName:"TYT Biyoloji Soru Bankası")
        ]
    }
}
