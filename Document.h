//
//  Document.h
//  Japanese Zen Garden 2
//
//  Created by Tri Vuong on 8/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Document : NSObject
{
    
}

@property (nonatomic) NSInteger *documentId;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *content;

@end
