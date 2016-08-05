//
//  Data+CoreDataProperties.swift
//  test
//
//  Created by Kazuhiro Inouye on 2016/08/05.
//  Copyright © 2016年 Nextep Technology. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Data {

    @NSManaged var createDate: NSDate?
    @NSManaged var updateDate: NSDate?
    @NSManaged var content: String?

}
