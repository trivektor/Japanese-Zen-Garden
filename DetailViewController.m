//
//  DetailViewController.m
//  Japanese Zen Garden 2
//
//  Created by Tri Vuong on 8/11/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "DetailViewController.h"
#import "Document.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

@synthesize document;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)setDocument:(Document *)doc
{
    document = doc;
    [[self navigationItem] setTitle:[document title]];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [titleField setText:[document title]];
    [contentField setText:[document content]];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self.view setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"grass.jpg"]]];
}

- (void)viewDidUnload
{
    contentField = nil;
    contentField = nil;
    titleField = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
