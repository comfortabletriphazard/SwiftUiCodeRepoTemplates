// Core Data has 3 set up steps before reading and writing data is programmed:
// 1. Create a Data Model File
// 2. Set up DataController.swift file as below
// 3. Modify the NAMEOFYOURPROJECTHEREApp.swift file by adding:

// @StateObject private var dataController = DataController()
//    var body: some Scene {
//         WindowGroup {
//             ListView()
//                 .environment(\.managedObjectContext, dataController.container.viewContext)
//         }
//     }



//  DataController.swift
//  HouseItemStorageTracker
//
//  Created by Michael Laverty on 09/03/2023. Credit to Hacking With Swift for this code, shown here: https://www.youtube.com/watch?v=bvm3ZLmwOdU&t=704s
// 
import CoreData
import Foundation

class DataController: ObservableObject {
    
    let container = NSPersistentContainer(name: "ENTITY NAME USED IN DATA MODEL FILE HERE")
    
    init() {
        container.loadPersistentStores { description, error in
            
            if let error = error {
                print("Core Data failed to load!: \(error.localizedDescription)")
            }
            
        }
    }
    
    
}
