//
//  FeedbackViewController.m
//  Japanese Zen Garden 2
//
//  Created by Tri Vuong on 8/19/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "FeedbackViewController.h"

@interface FeedbackViewController ()

@end

@implementation FeedbackViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self setTitle:@"Give Feedback"];
    [self.view setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"grass.jpg"]]];
    	
    [feedbackField.layer setBorderWidth:1.0];
    [feedbackField.layer setBorderColor:[[UIColor blackColor] CGColor]];
    [feedbackField.layer setCornerRadius:10.0];
    [feedbackField setDelegate:self];
    
    [nameField setDelegate:self];
    [emailField setDelegate:self];
}

- (void)viewDidUnload
{
    nameField = nil;
    emailField = nil;
    feedbackField = nil;
    submitButton = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)submitButtonTapped:(id)sender
{
    NSLog(nameField.text);
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
    if ([text isEqual:@"\n"]) {
        [textView resignFirstResponder];
        return NO;
    }
    return YES;
}

@end
