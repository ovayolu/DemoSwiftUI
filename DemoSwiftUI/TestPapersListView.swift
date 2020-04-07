//
//  TestPapersListView.swift
//  DemoSwiftUI
//
//  Created by Birkan Ovayolu on 02/12/2019.
//  Copyright © 2019 Pascal Education Technologies. All rights reserved.
//

import SwiftUI


struct TestPapersListView: View {
    let testPapers = TestPaper.all()
    
    var body: some View {
        NavigationView {
            List(self.testPapers, id: \.name) {testPaper in
                //NavigationLink(destination: QuestionSolutionImageView(question: question)) {
                //NavigationLink(destination: QuestionSolutionVideoView(question: question)) {
                NavigationLink(destination: QuestionsListView()) {
                    TestPaperRow(testPaper: testPaper)
                
                }
                .navigationBarTitle("Ünite 1", displayMode: .inline)
                .navigationBarItems(trailing:
                    Button("HOME") {
                        print("Help tapped!")
                    }
                )
            }
        }
        .animation(.spring())
        .overlay(VStack {
            HStack {
                Button("BACK") {}
                Spacer()
            }
            .padding(.all)
            
            Spacer()
                
    })
    }
}

struct TestPapersListView_Previews: PreviewProvider {
    static var previews: some View {
        TestPapersListView()
    }
}

struct TestPaperRow: View {
    let testPaper : TestPaper
    
    var body: some View {
        HStack {
            Text(testPaper.name)
                .font(.system(size: 14))
                .padding(.bottom)
                .padding(.top)
            Spacer()
            //Text(">")
            //    .font(.title)
            //    .fontWeight(.bold)
        }
    }
}


