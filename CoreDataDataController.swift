//
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
