//
//  Helpers.h
//  CloudKitTodo
//
//  Created by Francis Chong on 30/6/2016.
//  Copyright © 2016 Deusty LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CKDatabase;

extern NSString* CloudKitHelpers_DatabaseIdentifierWithDatabase(CKDatabase* database);
extern CKDatabase* CloudKitHelpers_DatabaseWithDatabaseIdentifier(NSString* databaseIdentifier);
