//
//  HomeViewController.m
//  JapaneseZenGarden
//
//  Created by Tri Vuong on 8/5/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "HomeViewController.h"

@implementation HomeViewController

@synthesize menuOptions;

- (id)init
{
    self = [super initWithStyle:UITableViewStylePlain];
    
    if (self) {
        //self.menuOptions = [[NSMutableArray alloc] initWithObjects:@"Introduction", @"History", nil];
    }
    return self;
}

- (id)initWithStyle:(UITableViewStyle)style 
{
    return [self init];
}

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
	// Do any additional setup after loading the view.
    self.menuOptions = [NSArray arrayWithObjects:@"Introduction", @"History", @"About This App", nil];
    [self.navigationItem setTitle:@"Japanese Zen Garden"];
    [self.view setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"grass.jpg"]]];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (NSInteger)tableView:(UITableView *) numberOfRowsInSection:(NSInteger)section
{
    NSLog(@"ccc");
    return [self.menuOptions count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"bbbb");
    static NSString *CellIdentifier = @"UITableViewCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    NSString *cellValue = [self.menuOptions objectAtIndex:[indexPath row]];
    cell.textLabel.text = cellValue;
    
    return cell;
}

@end
