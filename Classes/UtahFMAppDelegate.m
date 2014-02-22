//
//  UtahFMAppDelegate.m
//  UtahFM
//
//  Created by Chris Carey on 5/17/09.
//  Copyright XMission 2009. All rights reserved.
//

#import "UtahFMAppDelegate.h"
#import "FirstViewController.h"
#import "AudioStreamer.h"



@implementation UtahFMAppDelegate

@synthesize window;
@synthesize tabBarController;
@synthesize switchOnOff;
@synthesize switchBitrate;
@synthesize btnWebsite;

-(IBAction) goWebsite:(id)sender {
	//Load UtahFM.org
	[[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://utahfm.org"]];
}

-(void)doStartWait {
	
	/*
	progressAlert = [[UIAlertView alloc] initWithTitle: @"title"
											   message: @"Please wait..."
											  delegate: self
									 cancelButtonTitle: @"canc"
									 otherButtonTitles: nil];
	 
	[progressAlert addSubview:av];
	[progressAlert show];
	[progressAlert release];
	*/
	
	/*
	
	//av = [[UIActivityIndicatorView alloc]initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge];
	av = [[UIActivityIndicatorView alloc]initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
	//av.frame=CGRectMake(130, 180, 50, 50);
	av.frame=CGRectMake(130, 325, 50, 50);
	av.tag  = 1;
	[[[[tabBarController viewControllers] objectAtIndex:0] view] addSubview:av];
	//[[tabBarController viewControllers objectAtIndex:0] addSubview:av];
	[av startAnimating];
	*/
	
	
}

-(void)doStopWait {
	//UIActivityIndicatorView *tmpimg = (UIActivityIndicatorView *)[webView viewWithTag:1];
	//[tmpimg removeFromSuperview];
	
	//[av stopAnimating];
}

-(IBAction) updateOnOff:(id)sender {
	
	int intOnOff = [self.switchOnOff selectedSegmentIndex];
	
	if (intOnOff == 0) {
		
		// Stop the Media Stream
		[streamer stop];
		[streamer release];
		
		[self doStopWait];
		
		// Enable the Bitrate Button
		//[switchBitrate setEnabled:TRUE];
		

		
		
	} else {
		
		// Disable the Bitrate Button
		//[switchBitrate setEnabled:FALSE];
		
		[self doStartWait];
		
		// Start the Media Stream
		NSURL *url = [NSURL URLWithString:strUrlUtahFmStream];
		streamer = [[AudioStreamer alloc] initWithURL:url];
		[streamer start];
		//[url release];
		
		
	}
	
	//[intOnOff release];
}

-(IBAction) updateBitrate:(id)sender {
	
	int intBitrate = [self.switchBitrate selectedSegmentIndex];
	
	if (intBitrate == 0) {
		strUrlUtahFmStream = @"http://rstream.xmission.com/ufmlive";
	} else {
		strUrlUtahFmStream = @"http://166.70.187.226:7000/";
	}
	
	// If the stream is currently playing, stop and restart it
	if ([streamer isPlaying] == TRUE) {
		[streamer stop];
		sleep(1);
		NSURL *url = [NSURL URLWithString:strUrlUtahFmStream];
		streamer = [[AudioStreamer alloc] initWithURL:url];
		[streamer start];
		//[url release];
	}
	
	//[intBitrate release];
}

- (void)applicationDidFinishLaunching:(UIApplication *)application {
    
    // Add the tab bar controller's current view as a subview of the window
    [window addSubview:tabBarController.view];
}

/*
// Optional UITabBarControllerDelegate method
- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController {
}
*/

/*
// Optional UITabBarControllerDelegate method
- (void)tabBarController:(UITabBarController *)tabBarController didEndCustomizingViewControllers:(NSArray *)viewControllers changed:(BOOL)changed {
}
*/

- (void)dealloc {
	
	[super dealloc];
	
	// Shut down the stream
	[streamer stop];
	[streamer release];
	
	// Free up Objects I created
	[switchOnOff release];
	[switchBitrate release];
    [tabBarController release];
	[streamer release];
	
    [window release];
}

@end

