//
//  User+CoreDataProperties.swift
//  CoreDataEdu
//
//  Created by Алекс Смык on 20.06.22.
//
//

import Foundation
import CoreData


extension User {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<User> {
        return NSFetchRequest<User>(entityName: "User")
    }

    @NSManaged public var name: String?
    @NSManaged public var age: Int16
    @NSManaged public var isMain: Bool
    @NSManaged public var anyBool: NSNumber?
    @NSManaged public var company: Company?

}

extension User : Identifiable {

}
