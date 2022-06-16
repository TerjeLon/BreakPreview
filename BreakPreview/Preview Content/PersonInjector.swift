//
//  PersonInjector.swift
//  BreakPreview
//
//  Created by Terje Lønøy on 16/06/2022.
//

import Foundation

extension Person {
    static var preview: Person {
        let p = Person(context: PersistenceController.shared.container.viewContext)
        p.firstname = "test"
        p.lastname = "Two"
        return p
    }
}
