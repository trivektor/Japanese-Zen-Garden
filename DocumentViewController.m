//
//  DocumentViewController.m
//  Japanese Zen Garden 2
//
//  Created by Tri Vuong on 8/12/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "DocumentViewController.h"
#import "Documents.h"
#import "Document.h"

@interface DocumentViewController ()

@end

@implementation DocumentViewController

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

- (void)viewDidLoad
{
    [super viewDidLoad];
    [contentField setText:[document content]];
    [contentField setFont:[UIFont fontWithName:@"Baskerville" size:15]];
    NSMutableString *imagePath = [NSMutableString stringWithFormat:@"garden%d.png", document.documentId];
    [imageField setImage:[UIImage imageNamed:imagePath]];
    [contentField setEditable:NO];
}

- (void)viewDidUnload
{
    imageField = nil;
    contentField = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
