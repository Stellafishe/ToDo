//
//  ContentView.swift
//  etmhfyjrsyat4wyehtjxtrewtgrhzdgn
//
//  Created by Scholar on 6/14/23.
//

import SwiftUI

struct ContentView: View {
    @State var toDoItems: [ToDoItem] = []
    @State private var

    
    showNewTask = false
    
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
            List {
                    ForEach (toDoItems) { toDoItem in
                        if toDoItem.isImportant == true {
                            Text("‼️" + toDoItem.title)
                        } else {
                            Text(toDoItem.title)
                        }

                        }
            }
        }
        if showNewTask {
            
            NewToDo(toDoItems: $toDoItems,showNewTask: $showNewTask
, title: "", isImportant: false)
                .frame(height: 1.0)
                }
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
