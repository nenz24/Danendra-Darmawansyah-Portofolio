import SwiftUI


struct TodoListView: View {
    @StateObject private var todoList = TodoList()
    @State private var newTask: String = ""

    var body: some View {
        VStack {
            List {
                ForEach(todoList.head?.allNodes() ?? []) { node in
                    HStack {
                        Button(action: {
                            node.isCompleted.toggle()
                        }) {
                            Image(systemName: node.isCompleted ? "checkmark.circle.fill" : "circle")
                        }
                        Text(node.task)
                            .strikethrough(node.isCompleted)
                        
                        Spacer()
                        
                        if node.isCompleted {
                            Button(action: {
                                todoList.deleteTask(id: node.id)
                            }) {
                                Image(systemName: "trash")
                                    .foregroundColor(.red)
                            }
                        }
                    }
                }
            }
            .listStyle(PlainListStyle())

            HStack {
                TextField("Tambahkan tugas baru", text: $newTask)
                    .textFieldStyle(RoundedBorderTextFieldStyle())

                Button(action: {
                    if !newTask.isEmpty {
                        todoList.addTask(newTask)
                        newTask = ""
                    }
                }) {
                    Image(systemName: "plus.circle.fill")
                }
                .disabled(newTask.isEmpty)
            }
            .padding()
        }
    }
}


struct TodoListView_Previews: PreviewProvider {
    static var previews: some View {
        TodoListView()
    }
}


