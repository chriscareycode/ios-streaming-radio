//
//  SecondViewController.m
//  UtahFM
//
//  Created by Chris Carey on 5/19/09.
//  Copyright 2009 XMission. All rights reserved.
//

#import "SecondViewController.h"


@implementation SecondViewController

@synthesize btnWebsite;

-(IBAction) goWebsite:(id)sender {
	//Load UtahFM.org
	[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://utahfm.org"]];
}

/*
 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
	
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	
	//[self getAboutPage];
}

-(void)getAboutPage {
	
	NSURL *u = [NSURL URLWithString:@"http://chriscarey.com/projects/iphone/utahfm/about.php"];
	NSString *myText = [[NSString alloc] initWithContentsOfURL:u];
	
	UITextView *tv = [[[UITextView alloc]initWithFrame:CGRectMake(20, 150, 290, 250)] autorelease];
	tv.text = myText;
	tv.editable = NO;
	tv.font = [UIFont systemFontOfSize:16];
	
	[self.view addSubview:tv];
}


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
	
	// Free up Objects I created
	[btnWebsite release];
}


@end
