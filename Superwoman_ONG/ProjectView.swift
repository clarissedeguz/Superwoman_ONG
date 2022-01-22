//
//  ProjectView.swift
//  Superwoman_ONG
//
//  Created by Claire De Guzman on 2022-01-22.
//  Copyright © 2022 Claire De Guzman. All rights reserved.
//

import SwiftUI

struct ProjectView: View {
    @State var isFormScreenShowing = false
    var body: some View {
        NavigationView {
            List(0..<5) { item in
                HStack(spacing: 40.0)
                {
                    Image(systemName: "book.fill")
                    
                    VStack (spacing: 15.0){
                        Text("Project Name")
                            .font(.headline)
                            .fontWeight(.bold)
                            .foregroundColor(Color.black)
                        
                        Text("Website")
                            .foregroundColor(Color.blue)
                            .font(.system(size: 15))
                        Text("Closing Date")
                    }
                }
                
                VStack {
                    Text("Budget: $10,000")
                }
                .padding(.leading, 85.0)
                NavigationLink("", destination: DetailView())

            }
            .navigationBarTitle("Projects")
            
            
        }
        
        
    }
    
}





struct ProjectView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectView()
    }
}
