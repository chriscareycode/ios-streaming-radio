//
//  FirstViewController.m
//  UtahFM
//
//  Created by Chris Carey on 5/17/09.
//  Copyright XMission 2009. All rights reserved.
//

#import "FirstViewController.h"
#import <MediaPlayer/MPVolumeView.h>

@implementation FirstViewController



/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
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
	
	// Add Slider to the View
	MPVolumeView *volumeView2 = [[[MPVolumeView alloc] initWithFrame: CGRectMake(0, 0, 255, 22)] autorelease];
	//volumeView2.center = CGPointMake(360,430);
	volumeView2.center = CGPointMake(160,126);
	//[volumeView2 sizeToFit];
	[self.view addSubview:volumeView2];
	 
	
	
	
	/*
	MPVolumeView *volumeView = [[[MPVolumeView alloc] initWithFrame: [sliderOutlet frame]] autorelease];
    [sliderOutlet removeFromSuperview];
    [self.view addSubview:volumeView];
	*/
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
}

@end
