//
//  DetailViewController.h
//  Japanese Zen Garden 2
//
//  Created by Tri Vuong on 8/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface DetailViewController : UIViewController
{
    
    __weak IBOutlet UILabel *titleField;
    __weak IBOutlet UITextView *contentField;
}
@end
