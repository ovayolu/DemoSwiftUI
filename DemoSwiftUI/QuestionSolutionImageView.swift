//
//  QuestionSolutionImageView.swift
//  DemoSwiftUI
//
//  Created by Birkan Ovayolu on 02/12/2019.
//  Copyright © 2019 Pascal Education Technologies. All rights reserved.
//

import SwiftUI

struct QuestionSolutionImageView: View {
    let question: Question
    @State private var zoomed: Bool = false
    
    var body: some View {
        VStack {
            //Text(question.name)
            //    .font(.title)
            //    .fontWeight(.semibold)
            //    .foregroundColor(Color(hue: 1.0, saturation: 0.926, brightness: 0.563))
            Image(question.imageURL)
                .resizable()
                .aspectRatio(contentMode: self.zoomed ? .fill : .fit)
                .onTapGesture {
                    withAnimation{
                        self.zoomed.toggle()
                    }
                }
            
            Spacer()
        }
        .navigationBarTitle(Text(question.name), displayMode: .inline)
    }
}

struct QuestionSolutionImageView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionSolutionImageView(question: Question(name: "1. Soru", imageURL: "0001", videoURL: "", testPaper: "Test 1", isCompleted: true))
    }
}
