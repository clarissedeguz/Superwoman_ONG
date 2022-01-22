//
//  StakeholderView.swift
//  Superwoman_ONG
//
//  Created by Claire De Guzman on 2022-01-22.
//  Copyright © 2022 Claire De Guzman. All rights reserved.
//

import SwiftUI

struct StakeholderView: View {
    var body: some View {
        NavigationView {
            List(0..<5) { item in
                HStack(spacing: 40.0)
                {
                    Image(systemName: "person")
                    
                    VStack (spacing: 5.0){
                        Text("Name")
                            .font(.headline)
                            .fontWeight(.bold)
                            .foregroundColor(Color.black)
                        Text("Website")
                            .foregroundColor(Color.blue)
                            .font(.system(size: 15))
                        Text("Email")
                        Text("Projects funded: ")
                    }
                }
                
                VStack {
                    Text("$10,000")
                }
                .padding(.leading, 85.0)
                NavigationLink("", destination: DetailView())
            }
        .navigationBarTitle("Stakeholders")
         
            
        }
        
    }
}

