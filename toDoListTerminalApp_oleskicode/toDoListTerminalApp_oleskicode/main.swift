import Foundation

var keepWorking = true

struct toDoTask {
    var isComplete: Bool = false
    var taskDescription: String
    
    func printTask(){
        print("\(self.taskDescription) - isComplete:\(self.isComplete)")
    }
    
    mutating func markTaskAsComplete() {
        self.isComplete = true
    }
    
}

var toDoList: [toDoTask] = []

func addNewTask() {
    print("Enter task description:")
    let inputString = readLine()!
    let newTask = toDoTask(taskDescription: inputString)
    toDoList.append(newTask)
}

func printTaskList() {
    print("----------------------------")
    if toDoList.isEmpty {
        print("No tasks to show.")
    } else {
        print("Task List:")
        var counter: Int = 1
        for task in toDoList {
            print(counter, terminator: " -- ")
            task.printTask()
            counter += 1
        }
    }
    print("----------------------------")
}

//TODO
func completeTask() {
    printTaskList()
    print("Enter task number to mark as complete:")
    let inputString = readLine()!
    guard let input = Int(inputString) else {
        print("Invalid input. Please enter a valid number.")
        return
    }
    
    guard input > 0, input <= toDoList.count else {
        print("Invalid input. Please enter a valid number.")
        return
    }
    //mark task as complete
    print("Task to complete: \(input)")
    toDoList[input-1].isComplete = true
}

func showMenu() {
    print("Enter value:")
    print("1. Add New Task")
    print("2. View all tasks")
    print("3. Mark a task as completed")
    print("4. Remove a task")
    print("5. Quit/Exit")
    
    let inputString = readLine()! //user input
    var input : Int?
    input = Int(inputString)     //convert user input to integer
    
    switch input {
    case 1: do {
        print("Add New Task")
        addNewTask()
    }
    case 2: do {
        print("View all tasks")
        printTaskList()
    }
    case 3: do {
        print("Mark a task as completed")
        completeTask()
    }
    case 4: do {
        print("Remove a task")
    }
    case 5:  do {
        print("Quitting...")
        keepWorking = false
    }
    default :
        print("Invalid input. Please try again.")
    }
}

while keepWorking == true {
    showMenu()
}

/*
 Exercise: Create a Simple To-Do List App
 Write a Swift command-line program that allows a user to create, view, and manage a simple to-do list. The user should be able to perform the following actions:
 
 Add a task – The user can add a task to the list.
 View tasks – Display all tasks on the list with their statuses (whether completed or not).
 Mark a task as completed – The user can mark any task as completed.
 Remove a task – The user can remove a task from the list.
 Quit – The user can exit the application.
 
 Requirements:
 Use a Task struct to represent a task with properties for the task's name and completion status.
 Use an array to store tasks.
 Implement input handling so the user can interact with the program through a text-based menu.
 
 Sample Menu:
 Simple To-Do List
 1. Add a new task
 2. View all tasks
 3. Mark a task as completed
 4. Remove a task
 5. Quit
 
 Sample Output:
 Simple To-Do List
 1. Add a new task
 2. View all tasks
 3. Mark a task as completed
 4. Remove a task
 5. Quit
 Enter your choice: 2
 
 Tasks:
 1. [ ] Buy groceries
 2. [ ] Finish homework
 3. [X] Call mom
 
 Tips:
 Use a loop to continually show the menu until the user chooses to quit.
 Use readLine() to handle user input.
 Make sure the tasks are numbered, and provide clear instructions for each action.
 */
