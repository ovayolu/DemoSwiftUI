//
//  TestPapersListView.swift
//  DemoSwiftUI
//
//  Created by Birkan Ovayolu on 02/12/2019.
//  Copyright © 2019 Pascal Education Technologies. All rights reserved.
//

import SwiftUI


struct UnitsListView: View {
    let units = Unit.all()
    
    var body: some View {
        NavigationView {
            List(self.units, id: \.name) {unit in
                //NavigationLink(destination: QuestionSolutionImageView(question: question)) {
                //NavigationLink(destination: QuestionSolutionVideoView(question: question)) {
                NavigationLink(destination: TestPapersListView()) {
                    UnitRow(unit: unit)
                
                }
                .navigationBarTitle("TYT Biyoloji Soru Bankası", displayMode: .inline)
            }
        }
    }
}

struct UnitsListView_Previews: PreviewProvider {
    static var previews: some View {
        UnitsListView()
    }
}

struct UnitRow: View {
    let unit : Unit
    
    var body: some View {
        HStack {
            Text(unit.name)
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


