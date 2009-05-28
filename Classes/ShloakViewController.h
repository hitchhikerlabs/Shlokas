//
//  ShloakViewController.h
//  Shlokas
//
//  Created by Neha Mittal on 5/28/09.
//  Copyright 2009 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ShloakViewController : UIViewController {
	IBOutlet UILabel *sLabel, *hLabel, *lLabel, *oLabel, *kLabel, *aLabel, *dateLabel;
}

@property (nonatomic, retain) IBOutlet UILabel *sLabel, *hLabel, *lLabel, *oLabel, *kLabel, *aLabel, *dateLabel;

-(IBAction) makeItFav;
-(IBAction) emailSomeone;
@end
