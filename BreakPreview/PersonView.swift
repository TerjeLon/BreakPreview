//
//  PersonView.swift
//  BreakPreview
//
//  Created by Terje Lønøy on 16/06/2022.
//

import SwiftUI

struct PersonView: View {
    let person: Person
    
    var body: some View {
        VStack {
            Text(person.firstname ?? "")
        }
    }
}

struct PersonView_Previews: PreviewProvider {
    static var previews: some View {
        PersonView(person: Person.preview)
    }
}
