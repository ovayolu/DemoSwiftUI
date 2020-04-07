//
//  ContentView.swift
//  DemoSwiftUI
//
//  Created by Birkan Ovayolu on 02/12/2019.
//  Copyright © 2019 Pascal Education Technologies. All rights reserved.
//

import SwiftUI

struct QuestionsListView: View {
    let questions = Question.all()
    
    var body: some View {
        NavigationView {
            List(self.questions, id: \.name) {question in
                //NavigationLink(destination: QuestionSolutionImageView(question: question)) {
                //NavigationLink(destination: QuestionSolutionVideoView(question: question)) {
                NavigationLink(destination: SolutionVideoView(question: question)) {
                    QuestionRow(question: question)
                
                }
                .navigationBarTitle("Test 1", displayMode: .inline)
            }
        }
    }
}

struct QuestionsListView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionsListView()
    }
}

struct QuestionRow: View {
    let question : Question
    
    var body: some View {
        HStack {
            
            Text(question.name)
                .font(.system(size: 14))
                .padding(.bottom)
                .padding(.top)
            
            if (question.isCompleted) {
                Spacer()
                Image("PascalIconSquareTransparent")
                    .resizable()
                    .frame(width: 30, height: 30)
            }
            
            
            
        }
    }
}
