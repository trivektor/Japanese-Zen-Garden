//
//  Documents.h
//  Japanese Zen Garden 2
//
//  Created by Tri Vuong on 8/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <sqlite3.h>

@interface Documents : NSObject
{
    sqlite3 *db;
}

- (NSMutableArray *) getDocuments;

@end
