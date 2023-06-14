//
//  ContentView.swift
//  etmhfyjrsyat4wyehtjxtrewtgrhzdgn
//
//  Created by Scholar on 6/14/23.
//

import SwiftUI

struct ContentView: View {
    @State private var showNewTask = false
    
    var body: some View {
        VStack {
            HStack {
                Text("To Do List")
                    .font(.system(size: 40))
                    .fontWeight(.black)
                
                Spacer()
             
                Button(action: {
                    self.showNewTask = true
                }) {
                Text("+")
                }
            }
            padding()
        }
        if showNewTask {
            NewToDo(title: "", isImportant: false)
                }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
