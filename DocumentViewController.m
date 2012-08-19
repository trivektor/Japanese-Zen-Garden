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
    
    // Set the title of the document
    [titleField setText:[document title]];
    
    // Set the image
    NSMutableString *imagePath = [NSMutableString stringWithFormat:@"garden%d.png", document.documentId];
    [imageField setImage:[UIImage imageNamed:imagePath]];
    
    CGRect imageFieldFrame = imageField.frame;
    imageFieldFrame.size.height = imageField.frame.size.height;
    [imageField setFrame:imageFieldFrame];
    
    // Set the content of the document
    [contentField setText:[document content]];
    
    // Attempt to increase the height of the content field to contain text
    CGRect contentFieldFrame = contentField.frame;
    contentFieldFrame.size.height = contentField.contentSize.height;
    [contentField setFrame:contentFieldFrame];
    
    CGSize imageFieldSize = imageField.bounds.size;
    CGSize contentFieldSize = contentField.bounds.size;
    
    // Add the heights of the image field and content field and set the total to the height of the scrollView
    scrollView.contentSize = CGSizeMake(scrollView.frame.size.width, imageFieldSize.height + contentFieldSize.height);
}

- (void)viewDidUnload
{
    imageField = nil;
    contentField = nil;
    titleField = nil;
    scrollView = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
