//
//  FeedbackViewController.h
//  Japanese Zen Garden 2
//
//  Created by Tri Vuong on 8/19/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface FeedbackViewController : UIViewController <UITextFieldDelegate>
{
    
    __weak IBOutlet UITextField *nameField;
    __weak IBOutlet UITextField *emailField;
    __weak IBOutlet UITextView *feedbackField;
    __weak IBOutlet UIButton *submitButton;
}

- (IBAction)submitButtonTapped:(id)sender;

@end
