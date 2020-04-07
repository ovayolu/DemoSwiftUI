//
//  SolutionVideoPlayer.swift
//  DemoSwiftUI
//
//  Created by Birkan Ovayolu on 03/12/2019.
//  Copyright © 2019 Pascal Education Technologies. All rights reserved.
//

import SwiftUI
import AVKit

struct SolutionVideoView: View {
    let question: Question
    
    var body: some View {
        VStack {
            player(question: question).frame(height: UIScreen.main.bounds.height / 3)
            Spacer()
        }
    }
}

struct SolutionVideoView_Previews: PreviewProvider {
    static var previews: some View {
        SolutionVideoView(question: Question(name: "1. Soru", imageURL: "0001", videoURL: "https://mnmedias.api.telequebec.tv/m3u8/29880.m3u8", testPaper: "Test 1", isCompleted: true))
    }
}

struct player : UIViewControllerRepresentable {
    let question: Question
    func makeUIViewController(context: UIViewControllerRepresentableContext<player>) -> AVPlayerViewController {
        let controller = AVPlayerViewController()
        let url = question.videoURL
        let player1 = AVPlayer(url: URL(string: url)!)
        controller.player = player1
        return controller
    }
    
    func updateUIViewController(_ uiViewController: AVPlayerViewController, context: UIViewControllerRepresentableContext<player>) {
    }
    
}



