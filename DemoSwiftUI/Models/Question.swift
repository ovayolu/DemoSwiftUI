//
//  Question.swift
//  DemoSwiftUI
//
//  Created by Birkan Ovayolu on 02/12/2019.
//  Copyright © 2019 Pascal Education Technologies. All rights reserved.
//

import Foundation

struct Question: Identifiable {
    let id = UUID()
    let name: String
    let imageURL: String
    let videoURL: String
    let testPaper: String
    let isCompleted: Bool
}

extension Question {
    static func all() -> [Question] {
        return [
            Question(name: "1. Soru", imageURL: "0002", videoURL: "https://bitdash-a.akamaihd.net/content/sintel/hls/playlist.m3u8", testPaper: "Test 1", isCompleted: false),
            Question(name: "2. Soru", imageURL: "0001", videoURL: "https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4", testPaper: "Test 3", isCompleted: true),
            Question(name: "3. Soru", imageURL: "0003", videoURL: "http://www.streambox.fr/playlists/test_001/stream.m3u8", testPaper: "Test 6", isCompleted: false),
            Question(name: "4. Soru", imageURL: "0004", videoURL: "https://mnmedias.api.telequebec.tv/m3u8/29880.m3u8", testPaper: "Test 1", isCompleted: true)
        ]
    }
}
