//
//  NewToDo.swift
//  etmhfyjrsyat4wyehtjxtrewtgrhzdgn
//
//  Created by Scholar on 6/14/23.
//

import SwiftUI

struct NewToDo: View {
    @State var title: String
    @State var isImportant: Bool
    
    var body: some View {
        VStack {
            Text("Add a new task")
            TextField("Enter the task description", text: $title)
            Toggle(isOn: $isImportant) {
                            Text("Is it important?")
                Button(action: {
                  
                }) {
                    Text("Add")
                }
                        }
        }
        }
    }


struct NewToDo_Previews: PreviewProvider {
    static var previews: some View {
        NewToDo(title: "", isImportant: false)
    }
}
