//
//  ContentView.swift
//  DemoSwiftUI
//
//  Created by Birkan Ovayolu on 02/12/2019.
//  Copyright © 2019 Pascal Education Technologies. All rights reserved.
//

import SwiftUI

struct AboutUs: View {
    var body: some View {
        VStack{
            Spacer()
            Image("PascalSchoolLogo")
                .resizable()
                .frame(width: 200, height:200)
                .aspectRatio(contentMode: .fit)
                .padding(.all)
            Text("Answer videos for test papers")
                .font(.subheadline)
                .fontWeight(.semibold)
                .foregroundColor(.purple)
                Spacer()
            Text("developed by pascal technologies")
                .foregroundColor(.orange)
                .font(.footnote)
        }
    }
}

struct AboutUs_Previews: PreviewProvider {
    static var previews: some View {
        AboutUs()
    }
}
