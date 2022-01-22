//
//  FormView.swift
//  Superwoman_ONG
//
//  Created by Claire De Guzman on 2022-01-22.
//  Copyright © 2022 Claire De Guzman. All rights reserved.
//

import SwiftUI
import UIKit

struct FormView: View {
    private var typeOfEntry = ["Project", "Stakeholder"]
    @State private var selectedIndex = 0
    @State var projectName: String = ""
    @State var budgetAmount: String = ""
    @State var website: String = ""
    @State var closingDate: String = ""
    @State var description: String = ""
    
    @State var name: String = ""
    @State var email: String = ""
    @State var amount: String = ""
    @State var projects: String = ""
    @State var date: String = ""
    
    
    var body: some View {
        NavigationView {
            Form {
                Section(header:Text("CHOOSE A SECTION")) {
                    Picker("", selection: self.$selectedIndex, content:{
                        ForEach(0..<typeOfEntry.count, content: {item in Text(self.typeOfEntry[item])})
                    })
                        .pickerStyle(WheelPickerStyle())
                        .padding()
                        .frame(width: 350, height: 75, alignment:.center)
                }
                
                if selectedIndex == 0 {
                    
                    Section(header: Text("FILL IN THE PROJECT INFO BELOW")) {
                        TextField("Project Name", text: $projectName)
                        TextField("Description", text: $description)
                        TextField("Budget", text: $budgetAmount)
                        TextField("Website", text: $website)
                        TextField("Closing Date", text: $closingDate)
                    }
                } else {
                    Section(header: Text("FILL IN THE STAKEHOLDER INFO BELOW")) {
                        TextField("Name", text: $projectName)
                        TextField("Email", text: $email)
                        TextField("Amount", text: $amount)
                        TextField("Website", text: $website)
                        TextField("Projects", text: $projects)
                    }
                }
            }
            .navigationBarTitle("NEW ENTRY")
        }
    }
}


struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        FormView()
    }
}

