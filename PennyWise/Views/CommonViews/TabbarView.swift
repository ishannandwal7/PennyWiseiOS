//
//  TabbarView.swift
//  PennyWise
//
//  Created by Ishan Nandwal on 22/10/24.
//

import SwiftUI

struct TabbarView: View {
    var body: some View {
        TabView {
            DashboardView()
                .tabItem {
                    VStack {
                        Text("Dashboard")
                        Image(systemName: "chart.pie")
                    }
            }
            .tag(0)
            
            LogsTabView()
                .tabItem {
                    VStack {
                        Text("Logs")
                        Image(systemName: "tray")
                    }
            }
            .tag(1)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TabbarView()
    }
}

