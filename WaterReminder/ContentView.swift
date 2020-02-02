//
//  ContentView.swift
//  WaterReminder
//
//  Created by Aurélien Girault on 02/02/2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView() {
            HomeView().tabItem({
                Image(systemName: Constants.TabBar.Home.icon)
                Text("\(Constants.TabBar.Home.name)")
            }).tag(0)
            
            HistoryView().tabItem({
                Image(systemName: Constants.TabBar.History.icon)
                Text("\(Constants.TabBar.History.name)")
            }).tag(1)
            
            ConfigurationView().tabItem({
                Image(systemName: Constants.TabBar.Config.icon)
                Text("\(Constants.TabBar.Config.name)")
            }).tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
