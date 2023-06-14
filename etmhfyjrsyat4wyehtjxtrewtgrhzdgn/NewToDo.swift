//
//  NewToDo.swift
//  etmhfyjrsyat4wyehtjxtrewtgrhzdgn
//
//  Created by Scholar on 6/14/23.
//

import SwiftUI

struct NewToDo: View {
    @Binding var toDoItems: [ToDoItem]
    @Binding var showNewTask : Bool

    @State var title: String
    @State var isImportant: Bool
    
    var body: some View {
        VStack {
            Text("Add a new task")
            TextField("Enter the task description", text: $title)
            Toggle(isOn: $isImportant) {
                            Text("Is it important?")
                Button(action: {
                    self.addTask(title: self.title, isImportant: self.isImportant)
                    self.showNewTask = false

                }) {
                    Text("Add")
                }
                        }
        }
        
        }
    private func addTask(title: String, isImportant: Bool = false) {
            
            let task = ToDoItem(title: title, isImportant: isImportant)
            toDoItems.append(task)
        }
    }


struct NewToDo_Previews: PreviewProvider {
    static var previews: some View {
        NewToDo(toDoItems: .constant([]),showNewTask: .constant(true),
  title: "", isImportant: false)

        
    }
    
}
