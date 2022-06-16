//
//  Person+CoreDataProperties.swift
//  BreakPreview
//
//  Created by Terje Lønøy on 16/06/2022.
//
//

import Foundation
import CoreData


extension Person {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Person> {
        return NSFetchRequest<Person>(entityName: "Person")
    }

    @NSManaged public var lastname: String?
    @NSManaged public var firstname: String?
    @NSManaged public var haha: String?

}

extension Person : Identifiable {

}
