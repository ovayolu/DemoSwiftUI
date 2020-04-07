//
//  TestPaper.swift
//  DemoSwiftUI
//
//  Created by Birkan Ovayolu on 02/12/2019.
//  Copyright © 2019 Pascal Education Technologies. All rights reserved.
//

import Foundation

struct TestPaper {
    let name: String
    let unitName: String
}

extension TestPaper {
    static func all() -> [TestPaper] {
        return [
            TestPaper(name: "Test 1", unitName:"Unit 1 - Sayilar"),
            TestPaper(name: "Test 2", unitName:"Unit 1 - Sayilar")
        ]
    }
}
