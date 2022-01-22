//
//  ContentView.swift
//  Superwoman_ONG
//
//  Created by Claire De Guzman on 2022-01-22.
//  Copyright © 2022 Claire De Guzman. All rights reserved.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        TabView {
            Text("Home Tab")
                .font(.system(size: 30, weight: .bold, design: .rounded))
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
            }
            ProjectView().tabItem {
                Image(systemName: "book.fill")
                Text("Project")
            }
            StakeholderView().tabItem {
                Image(systemName: "person.fill")
                Text("Stakeholder")
            }
            FormView().tabItem {
                Image(systemName: "plus")
                Text("Add")
            }
            
          }
        }
    }



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

