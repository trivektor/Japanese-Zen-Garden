//
//  DocumentViewController.h
//  Japanese Zen Garden 2
//
//  Created by Tri Vuong on 8/12/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@class Document;

@interface DocumentViewController : UIViewController
{
    __weak IBOutlet UIImageView *imageField;
    __weak IBOutlet UITextView *contentField;
}

@property (nonatomic, strong) Document *document;

@end
