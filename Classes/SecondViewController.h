//
//  SecondViewController.h
//  UtahFM
//
//  Created by Chris Carey on 5/19/09.
//  Copyright 2009 XMission. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController {
	IBOutlet UIButton *btnWebsite;
}

@property (nonatomic, retain) IBOutlet UIButton *btnWebsite;

- (IBAction) goWebsite:(id) sender;

@end
