//
//  Note+CoreDataProperties.swift
//  NoteYourLife
//
//  Created by Joe on 28/02/2017.
//  Copyright © 2017 Joe. All rights reserved.
//

import Foundation
import CoreData


extension Note {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Note> {
        return NSFetchRequest<Note>(entityName: "Note");
    }

    @NSManaged public var contents: String?
    @NSManaged public var createdAt: NSDate?
    @NSManaged public var title: String?
    @NSManaged public var updatedAt: NSDate?

}
