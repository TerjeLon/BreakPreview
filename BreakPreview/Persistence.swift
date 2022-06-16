//
//  Persistence.swift
//  BreakPreview
//
//  Created by Terje Lønøy on 16/06/2022.
//

import CoreData

struct PersistenceController {
    static var shared = PersistenceController()

    lazy var container: NSPersistentContainer! = {
        let persistentContainer = NSPersistentContainer(name: "BreakPreview")
        let description = persistentContainer.persistentStoreDescriptions.first
        description?.shouldInferMappingModelAutomatically = ProcessInfo.processInfo.environment["XCTestConfigurationFilePath"] == nil ? false : true

        return persistentContainer
    }()

    init() {
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
    }
}
