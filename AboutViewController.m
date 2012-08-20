//
//  AboutViewController.m
//  Japanese Zen Garden 2
//
//  Created by Tri Vuong on 8/12/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AboutViewController.h"
#import "FeedbackViewController.h"

@interface AboutViewController ()

@end

@implementation AboutViewController

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
    [self setTitle:@"About This App"];
}

- (void)viewDidUnload
{
    feedbackButton = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)feedbackButtonTapped:(id)sender
{
    [self customizeBackButton];
    FeedbackViewController *feedbackViewController = [[FeedbackViewController alloc] init];
    [self.navigationController pushViewController:feedbackViewController animated:YES];
}

- (void)customizeBackButton
{
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] 
                                   initWithTitle: @"Back" 
                                   style: UIBarButtonItemStyleBordered
                                   target: nil action: nil];
    [backButton setTintColor:[[UIColor alloc] initWithRed:0x66/255.0 green:0x36/255.0 blue:0x7/255.0 alpha:1.0]];
    [self.navigationItem setBackBarButtonItem:backButton];
}

@end
