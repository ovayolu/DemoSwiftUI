//
//  ContentView.swift
//  DemoSwiftUI
//
//  Created by Birkan Ovayolu on 02/12/2019.
//  Copyright © 2019 Pascal Education Technologies. All rights reserved.
//

import SwiftUI

//now contentview is updated

struct ContentView: View {
    let questions = Question.all()
    @State private var isDone = true
    
    var body: some View {
        VStack {
            Toggle(isOn: $isDone) {
                Text("Sadece Pascal soruları")
                    .font(.body)
            }
            .padding(.horizontal)
            
            NavigationView {
                List(isDone ? self.questions.filter{ $0.isCompleted == true} : self.questions
                    
                
                , id: \.name) {question in
                    //NavigationLink(destination: QuestionSolutionImageView(question: question)) {
                    //NavigationLink(destination: QuestionSolutionVideoView(question: question)) {
                    NavigationLink(destination: SolutionVideoView(question: question)) {
                        QuestionRow(question: question)
                    
                    }
                    .navigationBarTitle(question.testPaper)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



