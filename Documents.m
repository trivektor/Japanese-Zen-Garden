//
//  Documents.m
//  Japanese Zen Garden 2
//
//  Created by Tri Vuong on 8/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Documents.h"
#import "Document.h"

@implementation Documents

- (NSMutableArray *) getDocuments
{
    NSMutableArray *documentsArray = [[NSMutableArray alloc] init];
    
    @try {
        NSFileManager *fileManager = [NSFileManager defaultManager];
        NSString *dbPath = [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"Japanese Zen Garden.sqlite"];
        BOOL success = [fileManager fileExistsAtPath:dbPath];
        
        if (!success) 
        {
            NSLog(@"Cannot locate database file");
        }
        
        if (!(sqlite3_open([dbPath UTF8String], &db) == SQLITE_OK))
        {
            NSLog(@"An error has occured");
        }
        
        const char *sql = "SELECT * FROM documents";
        sqlite3_stmt *sqlStatement;
        
        if (sqlite3_prepare(db, sql, -1, &sqlStatement, NULL) != SQLITE_OK)
        {
            NSLog(@"Problem with prepare statement");
        }
        
        while (sqlite3_step(sqlStatement) == SQLITE_ROW) 
        {
            Document *doc = [[Document alloc] init];
            doc.title = [NSString stringWithUTF8String:(char *) sqlite3_column_text(sqlStatement, 1)];
            doc.content = [NSString stringWithUTF8String:(char *) sqlite3_column_text(sqlStatement, 2)];
            [documentsArray addObject:doc];
        }
    }
    @catch (NSException *exception) {
        NSLog(@"An exception occured: %@", [exception reason]);
    }
    @finally {
        return documentsArray;
    }
}

@end
