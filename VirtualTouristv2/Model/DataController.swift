////
////  DataController.swift
////  VirtualTouristV1
////
////  Created by Sean Goldsborough on 2/11/18.
////  Copyright © 2018 Sean Goldsborough. All rights reserved.
////
//
//import Foundation
//import CoreData
//
//class DataController {
//    
//    let persistentContainer:NSPersistentContainer
//    
//    var viewContext:NSManagedObjectContext {
//        return persistentContainer.viewContext
//    }
//    
//    //    let backgroundContext:NSManagedObjectContext!
//    //
//    init(modelName:String) {
//        persistentContainer = NSPersistentContainer(name: modelName)
//        
//        //backgroundContext = persistentContainer.newBackgroundContext()
//    }
//    //
//    //    func configureContexts() {
//    //        viewContext.automaticallyMergesChangesFromParent = true
//    //        backgroundContext.automaticallyMergesChangesFromParent = true
//    //
//    //        backgroundContext.mergePolicy = NSMergePolicy.mergeByPropertyObjectTrump
//    //        viewContext.mergePolicy = NSMergePolicy.mergeByPropertyStoreTrump
//    //    }
//    
//    func load(completion: (() -> Void)? = nil) {
//        persistentContainer.loadPersistentStores { storeDescription, error in
//            guard error == nil else {
//                //fatalError(error!.localizedDescription)
//                print("error or DataController load function")
//                return
//            }
//            self.autoSaveViewContext()
//            //self.configureContexts()
//            completion?()
//        }
//    }
//}
//
//// MARK: - Autosaving
//
//extension DataController {
//    func autoSaveViewContext(interval:TimeInterval = 30) {
//        print("autosaving")
//        
//        guard interval > 0 else {
//            print("cannot set negative autosave interval")
//            return
//        }
//        
//        if viewContext.hasChanges {
//            try? viewContext.save()
//        }
//        
//        DispatchQueue.main.asyncAfter(deadline: .now() + interval) {
//            self.autoSaveViewContext(interval: interval)
//        }
//    }
//}
//
//
