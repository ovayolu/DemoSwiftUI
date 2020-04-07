//
//  RootView.swift
//  DemoSwiftUI
//
//  Created by Birkan Ovayolu on 06/12/2019.
//  Copyright © 2019 Pascal Education Technologies. All rights reserved.
//


import SwiftUI


//adapted from appointment app

struct RootView: View {
    var body: some View {
        NavigationView {
            MenuView()
                .navigationBarItems(trailing: profileButton)
        }
    }

    private var profileButton: some View {
        Button(action: { }) {
            Image(systemName: "person.crop.circle")
        }
    }
}


struct MenuView: View {
    var body: some View {
        List {
            link(icon: "calendar", label: "Biyoloji", destination: AppointmentListView())
            link(icon: "list.bullet", label: "Fizik", destination: TestPapersListView())
            link(icon: "rectangle.stack.person.crop", label: "Türkçe", destination: TestPapersListView())
            link(icon: "calendar", label: "Kimya", destination: TestPapersListView())
        }.navigationBarTitle(Text("Menu"), displayMode: .large)
    }

    private func link<Destination: View>(icon: String, label: String, destination: Destination) -> some View {
        return NavigationLink(destination: destination) {
            HStack {
                Image(systemName: icon)
                Text(label)
            }
        }
    }
}

struct AppointmentListView: View {
    var body: some View {
        List {
            link(destination: AppointmentView())
            link(destination: AppointmentView())
            link(destination: AppointmentView())
        }.navigationBarTitle("Soru Bankaları")
    }

    private func link<Destination: View>(destination: Destination) -> some View {
        NavigationLink(destination: destination) {
            AppointmentView()
        }
    }
}

struct AppointmentView: View {
    var body: some View{
        Text("Soru 1")
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}

