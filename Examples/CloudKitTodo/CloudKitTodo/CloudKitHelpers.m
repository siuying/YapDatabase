//
//  Helpers.m
//  CloudKitTodo
//
//  Created by Francis Chong on 30/6/2016.
//  Copyright © 2016 Deusty LLC. All rights reserved.
//

#import "CloudKitHelpers.h"
#import <CloudKit/CloudKit.h>

NSString* CloudKitHelpers_DatabaseIdentifierWithDatabase(CKDatabase* database) {
    switch(database.databaseScope) {
        case CKDatabaseScopePublic:
            return @"public";
        case CKDatabaseScopePrivate:
            return @"private";
        case CKDatabaseScopeShared:
            return @"shared";
        default:
            @throw [NSException exceptionWithName:NSInternalInconsistencyException
                                           reason:@"Unknown database"
                                         userInfo:@{}];
            return @"unknown";
    }
}

CKDatabase* CloudKitHelpers_DatabaseWithDatabaseIdentifier(NSString* databaseIdentifier) {
    CKContainer* container = [CKContainer defaultContainer];
    
    if ([databaseIdentifier isEqualToString:@"public"]) {
        return [container publicCloudDatabase];
    }
    
    if ([databaseIdentifier isEqualToString:@"public"]) {
        return [container privateCloudDatabase];
    }
    
    if ([databaseIdentifier isEqualToString:@"shared"]) {
        return [container sharedCloudDatabase];
    }
    
    @throw [NSException exceptionWithName:NSInternalInconsistencyException
                                   reason:@"Unknown database identifier"
                                 userInfo:@{}];
}
