//
//  UtahFMAppDelegate.h
//  UtahFM
//
//  Created by Chris Carey on 5/17/09.
//  Copyright XMission 2009. All rights reserved.
//

#import <UIKit/UIKit.h>


@class AudioStreamer;

@interface UtahFMAppDelegate : NSObject <UIApplicationDelegate, UITabBarControllerDelegate> {
    UIWindow *window;
    UITabBarController *tabBarController;
	
	IBOutlet UISegmentedControl *switchOnOff;
	IBOutlet UISegmentedControl *switchBitrate;
	AudioStreamer *streamer;
	
	UIActivityIndicatorView *av;
	UIAlertView *progressAlert;
	
	IBOutlet UIButton *btnWebsite;

}

NSString *strUrlUtahFmStream = @"http://rstream.xmission.com/ufmlive";

@property (nonatomic, retain) IBOutlet UIButton *btnWebsite;

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UITabBarController *tabBarController;

@property (nonatomic, retain) IBOutlet UISegmentedControl *switchOnOff;
@property (nonatomic, retain) IBOutlet UISegmentedControl *switchBitrate;

//@property (nonatomic, retain) IBOutlet UITableView *rssTableView;

- (IBAction) updateOnOff:(id) sender;
- (IBAction) updateBitrate:(id) sender;
- (IBAction) goWebsite:(id) sender;

@end
